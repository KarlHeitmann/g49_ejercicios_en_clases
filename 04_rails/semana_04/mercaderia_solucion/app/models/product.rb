# == Schema Information
#
# Table name: products
#
#  id              :bigint           not null, primary key
#  codigo_de_barra :string
#  descripcion     :text
#  nombre          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Product < ApplicationRecord
end
