# == Schema Information
#
# Table name: reservations
#
#  id          :bigint           not null, primary key
#  fecha       :date
#  kind        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  customer_id :bigint           not null
#
# Indexes
#
#  index_reservations_on_customer_id  (customer_id)
#
# Foreign Keys
#
#  fk_rails_...  (customer_id => customers.id)
#
class Reservation < ApplicationRecord
  belongs_to :customer
  enum kind: [:pagada, :pendiente]
end
