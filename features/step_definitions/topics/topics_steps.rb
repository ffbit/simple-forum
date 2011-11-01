Given /^I've got topics? named "([^"]*)"$/ do |titles|
  forum = Factory :forum
  titles.split(', ').each do |title|
    Factory :topic, title: title, forum: forum
  end
end

Then /^I should have (\d+) topics?$/ do |count|
  Topic.count.should == count.to_i
end

When /^I submit the new topic form without "([^"]*)"$/ do |field|
  topic = Factory.build :topic
  When %{I fill in a "title" field with "#{topic.title}"}
  When %{I fill in a "content" field with "#{topic.content}"}
  When %{I fill in a "#{field}" field with ""}
  When %{I click "Create Topic" button}
end

Given /^I've got (\d+) topic$/ do |count|
  forum = Factory :forum
  count.to_i.times do
    Factory :topic, forum: forum
  end
end

