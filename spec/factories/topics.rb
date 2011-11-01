# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    title        { Factory.next :title }
    content      { Factory.next :content }
    association  :forum
    association  :user
  end
end
