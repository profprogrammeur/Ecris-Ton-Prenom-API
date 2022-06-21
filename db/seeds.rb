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

user1 = User.create(
  email: 'aaa@aaa.com',
  password: "aaa"
)

user2 = User.create(
  email: 'bbb@bbb.com',
  password: "bbb"
)

user3 = User.create(
  email: 'ccc@ccc.com',
  password: "ccc"
)

images_urls = [
'https://unsplash.com/photos/eZaEWy2rAIc/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MXx8b2xkJTIwaG91c2V8ZW58MHx8fHwxNjU1MjkwMTc2&force=true&w=1920',
'https://unsplash.com/photos/GkGKXyQANW8/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8Nnx8b2xkJTIwaG91c2V8ZW58MHx8fHwxNjU1MjkwMTc2&force=true&w=1920',
'https://unsplash.com/photos/fS0yA2r-Qr0/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjU1MzIxMTY3&force=true&w=1920',
'https://unsplash.com/photos/3IRIerl16nk/download?ixid=MnwxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjU1MzIxMTg2&force=true&w=1920',
'https://unsplash.com/photos/zV4vQuZmw_Q/download?force=true&w=1920',
'https://unsplash.com/photos/Exo0AZAyeM8/download?force=true&w=1920',
'https://unsplash.com/photos/WYnU6CJbsEM/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8Mjd8fG9sZCUyMGhvdXNlfGVufDB8fHx8MTY1NTMxNDU0MA&force=true&w=1920',
'https://unsplash.com/photos/Kty5tDxqlCo/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MzF8fG9sZCUyMGhvdXNlfGVufDB8fHx8MTY1NTMxNDU0MA&force=true&w=1920',
'https://unsplash.com/photos/bvY24bV_2Xs/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8Mzh8fG9sZCUyMGhvdXNlfGVufDB8fHx8MTY1NTMxNDU0MA&force=true&w=1920',
'https://unsplash.com/photos/z5wyCd9WSRU/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8NDB8fG9sZCUyMGhvdXNlfGVufDB8fHx8MTY1NTMxNDU0MA&force=true&w=1920',
'https://unsplash.com/photos/ZFdunn4mNpI/download?force=true&w=1920',
'https://unsplash.com/photos/Vwdq_KoW74E/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8MjB8fG9sZCUyMGhvdXNlfGVufDB8fHx8MTY1NTI5MDE3Ng&force=true&w=1920']

12.times do |i|
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