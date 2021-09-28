require_relative 'mongo_example'

db,client,operations = conectar_gr

mostrar_todo db

print db.collection_names
puts
ap db[:product_class].find.first
puts db[:product_class].find.count
ap db[:product].find.first
puts db[:product].find.count
puts
puts db[:product].find("product_class.product_class_id": 1).count
puts db[:product_class].find("product.product_class_id": 1).count

categories = db[:product_class]
products = db[:product]

aggregation = products.aggregate([

])
