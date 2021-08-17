require "uri"
require "net/http"
require 'json'

url = URI("https://api.coingecko.com/api/v3/search/trending")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)
puts JSON.parse(response.read_body)
