module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def non_user_redirect_to_login
    if current_user.nil?
      flash[:login] = 'ログインが必要です'
      redirect_to new_session_path
    end
  end
end
