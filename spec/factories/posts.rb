FactoryBot.define do
  factory :post do
    title {Faker::Lorem.word}
    content {Faker::Lorem.paragraph}
    user_id {nil}
    post_category_id {nil}
  end
end