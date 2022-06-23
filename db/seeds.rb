# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker'


User.destroy_all


user1 = User.create(
  email: 'aaa@aaa.com',
  password: "aaa",
  child_name: "Clémence")



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





