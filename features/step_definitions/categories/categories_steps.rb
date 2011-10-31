Given /^I've got categor[yies]{1,3} named "([^"]*)"$/ do |titles|
  titles.split(', ').each do |title|
    @categories ||= []
    @categories << Factory(:category, :title => title)
  end
end

Given /^I've got (\d+) category$/ do |count|
  count.to_i.times do
    Factory :category
  end
end

Then /^I should see "([^"]*)" category$/ do |text|
  find('.category', :text => text).should be_visible
end

Then /^I should see "([^"]*)" category link$/ do |text|
  find('.category a', :text => text).should be_visible
end

Then /^I should not see "([^"]*)" category link$/ do |text|
  page.should have_no_link(text, :class => 'category')
end

Then /^I should have (\d+) category$/ do |count|
  Category.count.should == count.to_i
end
