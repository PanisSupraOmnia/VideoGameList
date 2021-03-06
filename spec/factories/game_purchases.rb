FactoryBot.define do
  factory :game_purchase do
    game
    user

    trait :comments do
      comments { "I own this game" }
    end

    trait :rating do
      rating { rand(0..100) }
    end

    trait :completion_status do
      completion_status { rand(0..5) }
    end

    trait :start_date do
      start_date { 3.days.ago }
    end

    trait :completion_date do
      completion_date { 1.day.ago }
    end

    trait :hours_played do
      hours_played { Faker::Number.decimal(3, 1) }
    end

    trait :platforms do
      after(:create) { |game_purchase| create(:game_purchase_platform, game_purchase: game_purchase) }
    end

    factory :game_purchase_with_comments_and_rating, traits: [:comments, :rating]
    factory :game_purchase_with_everything,
      traits: [:comments, :rating, :completion_status, :start_date, :completion_date, :hours_played, :platforms]
  end
end
