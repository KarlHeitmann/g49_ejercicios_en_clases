# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# A este tipo de archivos, que se leen de arriba hacia abajo
# se les llama ::::SCRIPT::::

# medicos = []
# 10.times do |i|
#   medicos << Physician.create(name: Faker, speciality: Faker )# TAREA: usar faker, porque esto no funciona así como está
# end

=begin
# ATENCION: Ocupar esto solo si yo voy a ocupar el comando rails db:seed. Si ocupo rails db:seed
# ES IMPERATIVO limpiar los datos.
puts "Inicio LIMPIEZA"

# HACK Y TAREA: Investigar sobre las rake tasks

Appointment.destroy_all
Physician.destroy_all
Patient.destroy_all

puts "FIN DE LIMPIEZA"
=end

def crear_10_medicos
  medicos = []
  10.times do |i|
    medicos << Physician.create(name: Faker, speciality: Faker )# TAREA: usar faker, porque esto no funciona así como está
  end
  return medicos
end

house = Physician.create!(name: "Gregory House", speciality: "Nefrologia y enfermedades infecciosas")
chapatin = Physician.create!(name: "Chapatín", speciality: "Médico general")

puts "Doctores creados"

jane = Patient.create!(name: "Jane Doe")
john = Patient.create!(name: "John Doe")

puts "Pacientes creados"

appointment1 = Appointment.create!(physician: house, patient: jane, appointment_date: 1.day.from_now)
appointment2 = Appointment.create!(physician_id: house.id, patient_id: jane.id, appointment_date: 1.year.from_now)

puts ":::::::::::::::"
