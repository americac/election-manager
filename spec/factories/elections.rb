require 'faker'

FactoryGirl.define do
  factory :election do |e|
    e.user_id {Faker::Number.between(1, 7)}
    e.title { Faker::Lorem.sentence(1) }
    e.description { Faker::Lorem.paragraph(1) }
    e.contact { Faker::Internet.email }
    #e.created_at {Faker::Time.between(DateTime.now - 1, DateTime.now)}
  end
end
