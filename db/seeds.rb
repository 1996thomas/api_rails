require 'faker'

Article.destroy_all
User.destroy_all


User.create!(email: 'test@test.fr', password: 'testtest')
User.create!(email: 'test@testtest.fr', password: 'testtest')

5.times do 
  Article.create(title: Faker::Name.name, content: Faker::Movies::Lebowski.quote, user: User.first)
end
5.times do 
  Article.create!(title: Faker::Name.name, content: Faker::Movies::Lebowski.quote, user: User.last)
end