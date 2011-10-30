When /^I fill in [ anthe]{,4}"([^"]*)" field with "([^"]*)"$/ do |locator, value|
  fill_in locator.capitalize, :with => value
end

When /^I click [ anthe]{,4}"([^"]*)" button$/ do |locator|
  click_button locator
end
