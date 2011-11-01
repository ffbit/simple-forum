Then /^I should have (\d+) posts?$/ do |count|
  Post.count.should == count.to_i
end

Given /^I've got posts with content "([^"]*)"$/ do |content|
  topic = Topic.first
  Factory(:post, content: content , topic: topic, user_id: topic.user_id)
end

Given /^I've got (\d+) posts$/ do |count|
  topic = Topic.first
  count.to_i.times do
    Factory(:post, topic: topic, user_id: topic.user_id)
  end
end

When /^I submit the new post form without "([^"]*)"$/ do |field|
  When %{I fill in a "#{field}" field with ""}
  When %{I click "Create Post" button}
end
