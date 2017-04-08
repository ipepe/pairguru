FactoryGirl.define do
  factory :movie do
    sequence(:title) { |n| "Movie#{n}" }
    description { Faker::Lorem.sentence(3, true) }
    released_at { Faker::Date.between(40.years.ago, Time.zone.today) }
    genre
  end
end
