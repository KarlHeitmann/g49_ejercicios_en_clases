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

class Account
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "account", database: "foodmart"
end

class Category
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "category", database: "foodmart"
end

class Currency
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "currency", database: "foodmart"
end

class Customer
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "customer", database: "foodmart"
end

class Days
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "days", database: "foodmart"
end

class Department
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "department", database: "foodmart"

  has_many :employees, foreign_key: "department_id", primary_key: "department_id"
end

class Employee
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "employee", database: "foodmart"

  belongs_to :department, foreign_key: "department_id", primary_key: "department_id"
  has_many :employee_closures, foreign_key: "employee_id", primary_key: "employee_id"
end

class EmployeeClosure
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "employee_closure", database: "foodmart"

  belongs_to :employee, foreign_key: "employee_id", primary_key: "employee_id"
end

class Position
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "position", database: "foodmart"

  has_many :employees, foreign_key: "position_id", primary_key: "position_id"
end

=begin
class
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "", database: "foodmart"
end
=end

=begin
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
=end

def ejemplo_query_1
  product_classes = ProductClass.all
  product_classes.each {|prc| puts prc.product_subcategory }
end

# products = Promotion.all
# puts "HOLA"
# puts products
# puts products.first
# puts "CHAO"

