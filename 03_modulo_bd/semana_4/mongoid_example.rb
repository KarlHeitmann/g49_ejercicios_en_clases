require 'mongoid'

Mongoid.load!("./mongoid.yml", :development)

class Product
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "product", database: "foodmart"

  belongs_to :product_class, foreign_key: 'product_class_id', primary_key: 'product_class_id'
end

class ProductClass
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "product_class", database: "foodmart"

  has_many :products, foreign_key: 'product_class_id', primary_key: 'product_class_id'
end

class Promotion
  include Mongoid::Document

  store_in collection: "promotion", database: "foodmart"
  # store_in collection: "promotion", database: "foodmart", client: "analytics"

  field :promotion_id, type: Integer
  field :promotion_district_id, type: Integer
  field :promotion_name, type: String
  field :media_type, type: String
  field :cost, type: Integer
  field :start_date, type: DateTime
  field :end_date, type: DateTime

end

def ejemplo_query_1
  product_classes = ProductClass.all
  product_classes.each {|prc| puts prc.product_subcategory }
end

# products = Promotion.all
# puts "HOLA"
# puts products
# puts products.first
# puts "CHAO"

