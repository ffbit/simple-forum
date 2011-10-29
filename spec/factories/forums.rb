# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :forum do
    title       { Factory.next :title }
    association :category
  end
end
