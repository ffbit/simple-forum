When /^I fill in [ anthe]{,4}"([^"]*)" field with "([^"]*)"$/ do |locator, value|
  fill_in locator.capitalize, :with => value
end

When /^I click [ anthe]{,4}"([^"]*)" button$/ do |locator|
  click_button locator
end

When /^I submit the sing up form without "([^"]*)"$/ do |locator|
  When %{I fill in a "email" field with "good@email.com"}
  When %{I fill in a "password" field with "secret"}
  When %{I fill in a "password confirmation" field with "secret"}
  When %{I fill in a "#{locator}" field with ""}
  When %{I click a "Sign up" button}
end

