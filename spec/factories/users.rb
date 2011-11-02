# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email                 { Factory.next :email }
    password              "secret"
    password_confirmation "secret"
    avatar                { File.join(Rails.root, 'spec', 'support', 'happy.jpg') }
  end
end
