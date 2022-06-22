# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker'

Property.destroy_all
User.destroy_all
Child.destroy_all

user1 = User.create(
  email: 'aaa@aaa.com',
  password: "aaa")

child1 = Child.create(
  child_namehild: "Alex",
  c_image:"https://unsplash.com/photos/lSwbvdy4xjc/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjU1ODExNTU2&force=true&w=640",
  user_id: User.last.id
  )

# user2 = User.create(
#   email: 'bbb@bbb.com',
#   password: "bbb"
# )

# user3 = User.create(
#   email: 'ccc@ccc.com',
#   password: "ccc"
# )

images_urls = [
'https://unsplash.com/photos/11GZVrMzfUU/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjU1ODA5MDQ5&force=true&w=640',
'https://unsplash.com/photos/85IJIHk4-jc/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8NDZ8fGtpZHxlbnwwfHx8fDE2NTU3OTY2MDQ&force=true&w=640',
'https://unsplash.com/photos/CXTfbtKzjxI/download?force=true&w=640',
'https://unsplash.com/photos/S_C_3a0iApE/download?force=true&w=640'
]

4.times do |i|
  property = Property.create(
    title: Faker::Mountain.name,
    price: (i+1)*100000,
    description: Faker::Quotes::Shakespeare.hamlet_quote + ' ' + Faker::Quotes::Shakespeare.hamlet_quote + ' ' + Faker::Quotes::Shakespeare.hamlet_quote,
    address: Faker::Address.full_address,
    image_url: images_urls[i]
    # user: User.find(rand(1..3))
  )
  


end

# Faker::House.room + ' : ' + Faker::House.furniture + ' ' + Faker::House.furniture + ' . ' + Faker::House.room + ' : ' + Faker::House.furniture + ' ' + Faker::House.furniture + ' . ' + Faker::House.room + ' : ' + Faker::House.furniture + ' ' + Faker::House.furniture + ' .  ' + 


