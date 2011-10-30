Given /^I'm on (.*)$/ do |page|
  visit path_to(page)
end

When /^I visit (.*)$/ do |page|
  Given %{I'm on #{page}}
end
