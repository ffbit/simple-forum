def path_to(page)
  case page
  
  when /the sign up page/
    signup_path
  
  # Add more page => path mappings here
  
  else
    raise "Can't find mapping from \"#{page}\" to a path."
  end
end
