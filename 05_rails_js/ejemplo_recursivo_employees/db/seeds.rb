# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

j1 = Employee.create!(email: "jefazo@example.com", password: "asdasd")
j2 = Employee.create!(email: "jefe_nivel_1_a@example.com", password: "asdasd")
j3 = Employee.create!(email: "jefe_nivel_1_b@example.com", password: "asdasd")
j4 = Employee.create!(email: "jefe_nivel_1_c@example.com", password: "asdasd")
j5 = Employee.create!(email: "jefe_nivel_1_d@example.com", password: "asdasd")

e_1_a = Employee.create!(email: "subempleado_1_a@example.com", password: "asdasd", boss_id: j1.id)
e_1_b = Employee.create!(email: "subempleado_1_b@example.com", password: "asdasd", boss_id: j1.id)

e_2_a = Employee.create!(email: "subempleado_2_a@example.com", password: "asdasd", boss_id: j2.id)
e_2_b = Employee.create!(email: "subempleado_2_b@example.com", password: "asdasd", boss_id: j2.id)
e_2_c = Employee.create!(email: "subempleado_2_c@example.com", password: "asdasd", boss_id: j2.id)

e_2_1_a = Employee.create!(email: "subempleado_2_1_a@example.com", password: "asdasd", boss_id: e_2_a.id)
e_2_1_b = Employee.create!(email: "subempleado_2_1_b@example.com", password: "asdasd", boss_id: e_2_a.id)
e_2_1_c = Employee.create!(email: "subempleado_2_1_c@example.com", password: "asdasd", boss_id: e_2_a.id)
