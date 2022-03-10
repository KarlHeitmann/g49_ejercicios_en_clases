class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  validates :name, :speciality, presence: true
end
