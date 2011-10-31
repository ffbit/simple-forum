Given /^I've got [ anthe]{,4}forums? named "([^"]*)"$/ do |titles|
  titles.split(', ').each do |title|
    Factory :forum, :title => title
  end
end
