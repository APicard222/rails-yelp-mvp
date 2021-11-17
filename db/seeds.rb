# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
count = 0
category = ["chinese", "italian", "japanese", "french", "belgian"]

while count < 5
  Restaurant.create(name: Faker::Restaurant.name.to_s, address: Faker::Address.street_address, category: category.sample)
  count += 1
end
