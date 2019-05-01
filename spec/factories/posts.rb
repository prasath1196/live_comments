FactoryBot.define do
  factory :post do
    title {Faker::Lorem.word}
    content {Faker::Lorem.paragraph}
    user_id {nil}
  end
end