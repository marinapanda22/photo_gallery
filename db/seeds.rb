# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin_user = User.create(name: 'Admin', email: 'adminn@mail.ru', password: 'adminadmin', password_confirmation: 'adminadmin', admin: true)

users = []
7.times do
  name = Faker::HarryPotter.character
  users.push User.create!(name: name, email: Faker::Internet.email(name), password: 'qweqwe', password_confirmation: 'qweqwe', admin: false)
end
dir = Rails.root + 'app' + 'assets' + 'images'
10.times do
  Gallery.create(title: Faker::Pokemon.name, image:File.new(dir + "2.png"),
                user_id: 7
  )
end
10.times do
  Gallery.create(title: Faker::Pokemon.name, image:File.new(dir + "4.jpg"),
                user_id: 5
  )
end
10.times do
  Gallery.create(title: Faker::Pokemon.name, image:File.new(dir + "3.jpeg"),
                user_id: 6
  )
end
10.times do
  Gallery.create(title: Faker::Pokemon.name, image:File.new(dir + "5.jpg"),
                user_id: 8
  )
end