# Descargar MongoDB Database Tools: https://www.mongodb.com/try/download/database-tools?tck=docs_databasetools
# git clone https://github.com/ivylabs/mongodb-databases-sample
# cd mongodb-databases-sample
# camino/a/mongorestore --host 127.0.0.1 --port 27017 --db foodmart .
# Usar
# pry
# > require_relative 'mongo_example'
# Recargar
# > load 'mongo_example.rb'

require 'mongo'
require 'awesome_print'

def conectar_gr
  client = Mongo::Client.new([ '127.0.0.1:27017' ], :database => 'foodmart')

  db = client.database

  # puts db.collections # returns a list of collection objects
  puts db.collection_names # returns a list of collection names

  collection = client[:operations]
  puts collection
  return [db, client, collection]
end

def mostrar_todo(db)
  db.collection_names.each do |name|
    ap "================== #{name} ==========================="
    ap db[name].find.first
  end
end

# desestructura:
# _,_,collection = conectar_gr

