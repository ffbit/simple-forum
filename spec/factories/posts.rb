# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    forum_id 1
    user_id 1
    content "MyText"
  end
end
