Then /^I should see "([^"]*)"$/ do |text|
  find('body', :text => text).should be_visible
end

Then /^I should see "([^"]*)" link$/ do |locator|
  find_link(locator).should be_visible
end

Then /^I should not see "([^"]*)" link$/ do |locator|
  page.should have_no_link(locator)
end
