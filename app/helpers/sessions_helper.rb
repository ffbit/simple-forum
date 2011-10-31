module SessionsHelper
  
  def user_admin?
    user_signed_in? and current_user.admin?
  end
  
  def authorize!
    authenticate_user!
    
    if not user_admin?
      redirect_to root_path, :flash => { :error => "Access denied." }
    end
  end
  
end
