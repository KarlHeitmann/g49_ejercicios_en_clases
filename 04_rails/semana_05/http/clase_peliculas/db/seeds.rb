# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# HACK uso recomendado con el comando `rails db:reset`. Use con precaución porque lo borra todo.

User.create!(email: "user1@example.com", password: "asdasd", nombre: "user 1", apellidos: "apellido 1", telefono: "+56 9 1122 3344")
User.create!(email: "user2@example.com", password: "asdasd", nombre: "user 2", apellidos: "apellido 2", telefono: "+56 9 1122 3345")
User.create!(email: "user3@example.com", password: "asdasd", nombre: "user 3", apellidos: "apellido 3", telefono: "+56 9 1122 3346")

aventura = Category.create!(name: "aventura")
drama = Category.create!(name: "drama")

star_wars = Movie.create!(
    titulo: 'Star Wars', lanzamiento: 30.years.ago, category_id: aventura.id
)
