# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email                 { Factory.next :email }
    password              "secret"
    password_confirmation "secret"
  end
end
