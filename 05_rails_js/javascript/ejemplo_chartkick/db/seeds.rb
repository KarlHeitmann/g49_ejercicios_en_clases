# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  customer = Customer.create!(nombre: Faker::Movies::StarWars.character, pais: Faker::Movies::StarWars.planet)

  3.times do |j|
    Reservation.create!(
      fecha: Faker::Date.between(from: Date.today, to: 3.months.from_now),
      kind: [:pagada, :pendiente].sample,
      customer: customer
    )
  end
end
