# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    association :forum
    association :user
    content     { Factory.next :content }
  end
end
