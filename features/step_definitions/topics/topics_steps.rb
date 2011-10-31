Given /^I've got topics? named "([^"]*)"$/ do |titles|
  forum = Factory :forum
  titles.split(', ').each do |title|
    Factory :topic, title: title, forum: forum
  end
end
