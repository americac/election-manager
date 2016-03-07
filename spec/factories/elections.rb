require 'faker'

FactoryGirl.define do
  factory :election do |e|
    e.user_id {Faker::Number.between(1, 7)}
    e.title { Faker::Lorem.sentence(1) }
    e.description { Faker::Lorem.paragraph(1) }
    e.contact { Faker::Internet.email }
    e.start { Faker::Time.forward(1, :morning) }
    e.finish { Faker::Time.forward(5, :evening) }
  end
end
