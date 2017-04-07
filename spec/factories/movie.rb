FactoryGirl.define do
  factory :movie do
    sequence(:title) { |n| "Movie#{n}" }
    description { Faker::Lorem.sentence(3, true) }
    released_at { Faker::Date.between(40.years.ago, Time.zone.today) }
    genre
    after(:build, :create) do |movie|
      movie.stub(:pair_guru_movie_details).and_return(
          PairGuruMovieApi::Movie.new(
              title: movie.title,
              plot: Faker::Lorem.sentence(3, true),
              poster: "/#{movie.title.downcase.parameterize}.jpg"
          )
      )
    end
  end
end
