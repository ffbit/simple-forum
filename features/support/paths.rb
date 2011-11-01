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
  
  when /the new forum page/
    new_forum_path
    
  when /the forum page/
    forum_path(Forum.first)
    
  when /the edit forum page/
    edit_forum_path(Forum.first)
  
  when /the topic page/
    topic_path(Topic.first)
  
  when /the edit topic page/
    edit_topic_path(Topic.first)
  
  when /the edit post page/
    edit_post_path(Post.first)
  
  # Add more page => path mappings here
  
  else
    raise "Can't find mapping from \"#{page}\" to a path."
  end
end
