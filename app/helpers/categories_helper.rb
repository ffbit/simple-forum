module CategoriesHelper
  
  def authorizate_admin!
    authenticate_user!
    
    if not current_user.admin?
      redirect_to root_path, :flash => { :error => "Access denied." }
    end
  end
  
end
