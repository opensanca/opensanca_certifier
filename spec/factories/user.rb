FactoryGirl.define do
  factory :user do
    name     { Faker::GameOfThrones.character }
    document '1111111'
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
  end
end
