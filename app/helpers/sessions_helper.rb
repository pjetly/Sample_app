module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    self.current_user = user
    Rails.logger.debug "setting current user = #{user.name} or #{self.current_user.name}"
  end

  def signed_in?  
    if !current_user.nil?
      Rails.logger.debug "current_user = #{current_user.name}"
    else
      Rails.logger.debug "***** current_user is empty *****"
    end
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
end
