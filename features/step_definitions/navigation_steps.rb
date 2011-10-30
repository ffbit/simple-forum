Given /^I'm on (.*)$/ do |page|
  visit path_to(page)
end

When /^I visit the sign out page$/ do
  Given %{I'm on the sign out page}
end
