When /^I submit the sing up form without "([^"]*)"$/ do |locator|
  user = Factory.build :user
  When %{I fill in a "email" field with "#{user.email}"}
  When %{I fill in a "password" field with "#{user.password}"}
  When %{I fill in a "password confirmation" field with "#{user.password_confirmation}"}
  When %{I fill in a "#{locator}" field with ""}
  When %{I click a "Sign up" button}
end

Then /^I should have (\d+) users?$/ do |count|
  User.count.should == count.to_i
end

Then /^user should have an avatar$/ do
  User.first.avatar.should be_true
end
