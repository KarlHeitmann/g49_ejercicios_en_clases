# == Schema Information
#
# Table name: customers
#
#  id         :bigint           not null, primary key
#  nombre     :string
#  pais       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Customer < ApplicationRecord
  has_many :reservations
end
