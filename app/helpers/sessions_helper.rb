module SessionsHelper

  # 登入指定的用户
  def log_in(user)
    session[:user_id] = user.id
  end

  # 返回当前登陆的用户（如果有的话）
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # 如果用户已登陆，返回 true, 否则放回 false
  def logged_in?
    !current_user.nil?
  end

  def log_out
    # session.delete(:user_id)
    session[:user_id] = nil
    @current_user = nil
  end
end
