Then /^I should see "([^"]*)"$/ do |content|
  page.should have_content(content)
end

Then /^I should see "([^"]*)" link$/ do |locator|
  find_link(locator).should be_visible
end

Then /^I should not see "([^"]*)" link$/ do |locator|
  page.should have_no_link(locator)
end
