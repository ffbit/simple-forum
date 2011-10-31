# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :topic do
    title        { Factory.next :title }
    association  :forum
    content      { Factory.next :content }
  end
end
