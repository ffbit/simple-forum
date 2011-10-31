def path_to(page)
  case page
  
  when /the home page/
    root_path
  
  when /the sign up page/
    signup_path
    
  when /the sign in page/
    signin_path
  
  when /the sign out page/
    signout_path
  
  when /the new category page/
    new_category_path
  
  when /the edit category page/
    edit_category_path(Category.first)
  
  # Add more page => path mappings here
  
  else
    raise "Can't find mapping from \"#{page}\" to a path."
  end
end
