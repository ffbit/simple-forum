module SessionsHelper
  
  def user_admin?
    user_signed_in? and current_user.admin?
  end
  
end
