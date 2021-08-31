# para cargarlo en IRB:
# source 'desafio_1.rb'
# Iteraciones
# ventas.keys: devuelve solo las llaves de las ventas
# ventas.each {|k,v| puts "#{k}------#{v}"} Itera todos los pares llave-valor del hash
ventas= {
  Enero:15000,
  Febrero:22000,
  Marzo:12000,
  Abril:17000,
  Mayo:81000,
  Junio:13000,
  Julio:21000,
  Agosto:41200,
  Septiembre:25000,
  Octubre:21500,
  Noviembre:91000,
  Diciembre:21000
}

ventas.each do |clave, valor|
  # puts "clave: #{clave} --------- valor: #{valor}"
  if valor >= 45000
    puts valor
  end
end

