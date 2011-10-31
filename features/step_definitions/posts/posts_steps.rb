Then /^I should have (\d+) posts?$/ do |count|
  Post.count.should == count.to_i
end

