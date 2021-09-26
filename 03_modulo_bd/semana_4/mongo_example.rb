# Descargar MongoDB Database Tools: https://www.mongodb.com/try/download/database-tools?tck=docs_databasetools
# git clone https://github.com/ivylabs/mongodb-databases-sample
# cd mongodb-databases-sample
# camino/a/mongorestore --host 127.0.0.1 --port 27017 --db foodmart .
# Usar
# pry
# > require_relative 'mongo_example'
require 'mongo'
require 'awesome_print'

def conectar_gr
  client_gr = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'foodmart')

  db_gr = client_gr.database

  # puts db.collections # returns a list of collection objects
  puts db_gr.collection_names # returns a list of collection names

  collection = client_gr[:operations]
  puts collection
  return [client_gr, db_gr, collection]
end

# desestructura:
# _,_,collection = conectar_gr

