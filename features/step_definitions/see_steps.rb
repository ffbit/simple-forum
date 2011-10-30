Then /^I should see "([^"]*)"$/ do |text|
  find('body', :text => text).should be_visible
end

Then /^I should see "([^"]*)" (.*)$/ do |text, item|
  find("body .#{item}", :text => text).should be_visible
end
