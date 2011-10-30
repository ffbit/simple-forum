# I think it's not clearly and it works
#Given /^I've got (\d+) (.*)$/ do |count, entity_name|
#  entity = entity_name.singularize
#  entitys = entity.pluralize
#  items = []
#  
#  count.to_i.times do
#    items << Factory(entity.to_sym)
#  end
#  
#  instance_variable_set "@#{entity}", items.first
#  instance_variable_set "@#{entitys}", items
#end
