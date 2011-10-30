When /^I submit the sing up form without "([^"]*)"$/ do |locator|
  user = Factory :user
  When %{I fill in a "email" field with "#{user.email}"}
  When %{I fill in a "password" field with "#{user.password}"}
  When %{I fill in a "password confirmation" field with "#{user.password_confirmation}"}
  When %{I fill in a "#{locator}" field with ""}
  When %{I click a "Sign up" button}
end
