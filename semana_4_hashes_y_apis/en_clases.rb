# Tome los datos de la API de Coingecko.
# 1. Tome las criptomonedas "calientes" del coingecko, las que están en tendencia. Saque los datos de este endpoint de la API:
# /search/trending que le proporcionará las TOP7 monedas que más han sido buscadas por los usuarios de coingecjo en las últimas 24 horas.
# Guarde el ID de cada una de las criptomonedas y su "market_cap_rank" en un archivo .csv
# 2. OPCIONAL: Para cada moneda, busque la información de su precio actual, y agreguelo en el archivo .csv como una columna más
#
# https://www.coingecko.com/en/api/documentation

require "uri"
require "net/http"
require "json"

url = URI("https://api.coingecko.com/api/v3/search/trending")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)

respuesta = JSON.parse response.read_body
# respuesta = response.read_body # OJO CON ESTO: read_body devuelve un STRING. Deben "parsearlo" con el JSON.parse para usarlo como un hash o arreglo (dependiendo de que les devuelva la API)

puts respuesta.class

# puts respuesta["coins"]

