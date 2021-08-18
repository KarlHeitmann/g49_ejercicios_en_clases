require "uri"
require "net/http"
require 'json'

url = URI("https://api.coingecko.com/api/v3/search/trending")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)
datos = JSON.parse(response.read_body)

puts datos
archivo = File.open "tendencias.csv", "w"

archivo.puts "id,market_cap_rank"

datos['coins'].each do |dato|
  dato['item']
  url = URI("https://api.coingecko.com/api/v3/simple/price?ids=#{dato['item']['id']}&vs_currencies=clp")
  https = Net::HTTP.new(url.host, url.port)
  https.use_ssl = true

  request = Net::HTTP::Get.new(url)

  response = https.request(request)
  precio = JSON.parse(response.read_body)

  archivo.puts "#{dato['item']['id']},#{dato['item']['market_cap_rank']},#{precio[dato['item']['id']]['clp']}"
end

archivo.close