class UsersController < SessionsController
  def update
    @user = current_user

    # みんな0の'tenki'に
    @user.function_type = 0

    if user_params[:prefecture_id].blank?
      redirect_to settings_path, notice: '都道府県を設定してください。'
      return false
    end

    if user_params[:modify_name].blank?
      redirect_to settings_path, notice: '変更後の名前を設定してください。'
      return false
    end

    if @user.update(user_params)
      redirect_to settings_path, notice: '設定を更新しました。'
    else
      render action: 'index'
    end
  end

  private
  def user_params
    params.require(:user).permit(:function_type, :modify_name, :prefecture_id)
  end
end
