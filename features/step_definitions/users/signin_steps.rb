Given /^I've got a user$/ do
  @user = Factory :user
end

When /I fill in sign in form/ do
  When %{I fill in a "email" field with "#{@user.email}"}
  When %{I fill in a "password" field with "#{@user.password}"}
end

When /^I sign in$/ do
  When %{I fill in sign in form}
  When %{I click a "Sign in" button}
end

When /^I submit the sing in form without "([^"]*)"$/ do |locator|
  When %{I fill in sign in form}
  When %{I fill in a "#{locator}" field with ""}
  When %{I click a "Sign in" button}
end

