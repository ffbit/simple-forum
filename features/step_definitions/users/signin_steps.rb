Given /^I've got [ anthe]{,4}user$/ do
  @user ||= Factory :user
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

Given /^I'm signed in as [ anthe]{,4}admin$/ do
  Given %{I've got a user}
  @user.toggle!(:admin)
  @user.save!
  Given %{I'm signed in as a user}
end

Given /^I'm signed in as [ anthe]{,4}user$/ do
  Given %{I've got a user}
  Given %{I'm on the sign out page}
  Given %{I'm on the sign in page}
  When %{I sign in}
end
