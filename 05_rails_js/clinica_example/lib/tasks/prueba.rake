namespace :tarea do
  task g49: :environment do |t, args|
    puts "Esta es una tarea de ejemplo"
    puts "Cantidad de appointments que tengo: #{Appointment.count}"
    Appointment.all.each do |appointment|
      puts "id: #{appointment.id} - fecha de cita: #{appointment.appointment_date} ::::: Doctor: #{appointment.physician.name}"
    end
    puts "fin de tarea"
  end
  task g49_otra_tarea: :environment do |t, args|
    puts "Soy otra tarea en el namespace tarea, y me llamo 'g49_otra_tarea'"
  end
end

namespace :ultimo_ejemplo do
  task g49: :environment do |t, args|
    puts "Soy el ultimo ejemplo en un namespace llamado 'ultimo_ejemplo'"
  end
end
