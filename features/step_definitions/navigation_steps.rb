Given /^I'm on (.*)$/ do |page_name|
  visit path_to(page_name)
end

When /^I visit (.*)$/ do |page_name|
  Given %{I'm on #{page_name}}
end

Then /^I should be on (.*)$/ do |page_name|
  page.current_path.should == path_to(page_name)
end

Then /^I should be redirected to (.*)$/ do |page_name|
  Then %{I should be on #{page_name}}
end
