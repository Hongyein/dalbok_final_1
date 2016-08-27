class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # Send 'em back where they came from with a slap on the wrist
def authority_forbidden(error)
  Authority.logger.warn(error.message)
  redirect_to request.referrer.presence || root_path, :alert => '당신은 이 행동을 수행할 권한이 없습니다.'
end
end
