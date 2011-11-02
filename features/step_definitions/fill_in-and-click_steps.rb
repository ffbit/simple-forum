When /^I fill in [ anthe]{,4}"([^"]*)" field with "([^"]*)"$/ do |locator, value|
  fill_in locator.capitalize, :with => value
end

When /^I click [ anthe]{,4}"([^"]*)" button$/ do |locator|
  click_button locator
end

When /^I click "([^"]*)" "([^"]*)" link$/ do |text, parent|
  find(".#{parent} a", :text => text).click
end

When /^I click "([^"]*)" link$/ do |locator|
  click_link locator
end

When /^I attach an "([^"]*)"$/ do |field|
  attach_file :avatar, File.join(Rails.root, 'spec', 'support', 'happy.jpg')
end

