require 'twitter'
require 'oauth'
require 'net/https'

class User < ApplicationRecord

  belongs_to :prefecture

  FUNCTION_TYPE = ['tenki']

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :timeoutable, :omniauthable, omniauth_providers: [:twitter]

  def self.from_omniauth(auth)
    find_or_create_by(provider: auth["provider"], uid: auth["uid"]) do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["nickname"]
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"]) do |user|
        user.attributes = params
      end
    else
      super
    end
  end

  def self.update_all_user
    User.all.each do |user|
      next if user.modify_name.blank? || user.prefecture_id.blank?
      tenki = Tenki.new(user.prefecture_id)

      next if tenki.emoji.blank?

      user.update_name(tenki)

      sleep(1)
    end
  end

  def update_name(tenki)
    modify_name = self.modify_name
    modified_name = modify_name.gsub(/-tenki-/, tenki.emoji)

    consumer = OAuth::Consumer.new(ENV['TWITTER_APIKEY'], ENV['TWITTER_APISECRET'], site: "https://api.twiter.com")
    endpoint = OAuth::AccessToken.new(consumer, self.token, self.secret)

    res = endpoint.post('https://api.twitter.com/1.1/account/update_profile.json', name: modified_name)
  end
end
