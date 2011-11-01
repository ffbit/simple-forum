Then /^I should have (\d+) posts?$/ do |count|
  Post.count.should == count.to_i
end

Given /^I've got posts with content "([^"]*)"$/ do |content|
  topic = Topic.first
  topic.posts.create!(content: content, user_id: topic.user_id)
end
