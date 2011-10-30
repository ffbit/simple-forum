Then /^I should see "([^"]*)"$/ do |text|
  find('body', :text => text).should be_visible
end
