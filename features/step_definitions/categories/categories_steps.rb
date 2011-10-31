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

Then /^I should have (\d+) categor[yies]{1,3}$/ do |count|
  Category.count.should == count.to_i
end
