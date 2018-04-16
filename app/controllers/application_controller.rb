class ApplicationController < ActionController::Base

  unless Rails.env.development?
    protect_from_forgery with: :exception
    rescue_from ActiveRecord::RecordNotFound, with: :render_404
    rescue_from ActionController::RoutingError, with: :render_404
    rescue_from Exception, with: :render_404
  end

  def render_404(exception)
    ExceptionNotifier.notify_exception(exception, env: request.env, data: {message: "error"})
    logger.info "Rendering 404 with exception: #{exception.message}" if exception
    render template: 'errors/error_404', status: 404, layout: 'application'
  end

  def test_exception_notifier
    raise "Test Exception. This is a test exception to make sure the exception notifier is working."
  end

end
