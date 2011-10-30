Given /^I've got categories named "([^"]*)"$/ do |titles|
  titles.split(', ').each do |title|
    @categories ||= []
    @categories << Factory(:category, :title => title)
  end
end
