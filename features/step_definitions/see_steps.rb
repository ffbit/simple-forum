Then /^I should see "([^"]*)"$/ do |content|
  page.should have_content(content)
end

Then /^I should see "([^"]*)" link$/ do |locator|
  find_link(locator).should be_visible
end

Then /^I should not see "([^"]*)" link$/ do |locator|
  page.should have_no_link(locator)
end

Then /^I should see "([^"]*)" "([^"]*)" link$/ do |text, parent|
  find(".#{parent} a", :text => text).should be_visible
end

Then /^I should see "([^"]*)" "([^"]*)"$/ do |text, container|
  find(".#{container}", :text => text).should be_visible
end

Then /^I should not see "([^"]*)" "([^"]*)" link$/ do |text, container|
  all(".#{container}").each do |parent|
    parent.should have_no_link(text)
  end
end

Then /^I should see (\d+) "([^"]*)"$/ do |count, locator|
  all(".#{locator.singularize}").count.should == count.to_i
end
