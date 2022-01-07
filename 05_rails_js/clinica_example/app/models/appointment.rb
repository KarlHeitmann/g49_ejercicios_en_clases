class Appointment < ApplicationRecord
  scope :futures, -> { where("appointment_date > ?", DateTime.now) }
  scope :pasts, -> { where("appointment_date < ?", DateTime.now) }

  belongs_to :physician
  belongs_to :patient
end
