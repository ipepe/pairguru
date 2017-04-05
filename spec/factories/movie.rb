FactoryGirl.define do
  factory :movie do
    title { Faker::Lorem.word }
    description { Faker::Lorem.sentence(3, true) }
    released_at { Faker::Date.between(40.years.ago, Time.zone.today) }
    genre
    after(:create) do |movie|
      movie.stub(:pair_guru_movie_details).and_return(
          PairGuruMovieApi::Movie.new(
              title: Faker::Lorem.word,
              plot: Faker::Lorem.sentence(3, true),
              poster: Faker::Lorem.word
          )
      )
    end
  end
end
