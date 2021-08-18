# JSON

nombre_persona = "Karl"
edad_persona = 33

persona_en_symbol_1 = {
  nombre: "Karl",
  edad: 33,
  fono: "+56933224455",
}

persona_en_symbol_2 = {
  :nombre => "Karl",
  :edad => 33,
  :fono => "+56933224455",
}

persona_en_string = {
  "nombre" => "Karl",
  "edad" => 33,
  "fono" => "+56933224455",
}

persona_compleja = {
  "nombre" => "Karl",
  "edad" => 33,
  "fono" => "+56933224455",
  "autos" => [
    {
      "marca" => "Mercedes",
      "Año" => 2022,
      "cilindrada" => "3.4"
    },
    {
      "marca" => "Ford T",
      "Año" => 1968,
      "cilindrada" => "1.4"
    }
  ]
}

# <img src="">

fotos_facebook = [
  {
    "url" => "https://desafiosdev.s3.amazonaws.com/uploads/user2/photo/8395/thumb_yo.jpg",
    "description" => "Lorem ipsum",
    "reactions" => {
      "me_divierte" => 5,
      "me_enoja" => 2,
      "no_me_gusta" => 10,
      "me_gusta" => 100,
      "me_importa" => 23,
    }
  },
  {
    "url" => "https://desafiosdev.s3.amazonaws.com/uploads/user2/photo/8395/thumb_yo.jpg",
    "description" => "Lorem ipsum",
    "reactions" => {
      "me_divierte" => 5,
      "me_enoja" => 2,
      "no_me_gusta" => 10,
      "me_gusta" => 100,
      "me_importa" => 23,
    }
  }
]







archivo_salida = File.open("fotos.html", "w")

archivo_salida.puts "<html>
  <head>
    <title>Mis fotos</title>
  </head>
<body>"

fotos_facebook.each do |foto|
  puts foto["url"]
  archivo_salida.puts "<p>???? REEMPLAZAR POR LO QUE CORRESPONDA ?????</p>"
end
archivo_salida.puts "</body>
</html>"

archivo_salida.close

#symbol