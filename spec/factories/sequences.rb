require 'factory_girl'
require 'faker'

FactoryGirl.define do
  sequence :email do |n|
    "user-#{n}@example.com"
  end
  
  sequence :title do
    Faker::Lorem.sentence
  end
  
  sequence :content do
    Faker::Lorem.paragraphs
  end
end
