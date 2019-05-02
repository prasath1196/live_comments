user_1  =  User.create!(email:Faker::Internet.email,password:'test123',password_confirmation:'test123')
user_2  =  User.create!(email:Faker::Internet.email,password:'test123',password_confirmation:'test123')
user_3  =  User.create!(email:Faker::Internet.email,password:'test123',password_confirmation:'test123')
10.times do
  category = PostCategory.create(name:Faker::ProgrammingLanguage.name)
  2.times do
    category.posts.create!(title:Faker::Book.title,content:Faker::Lorem.paragraph,user_id:user_1.id)
  end
end