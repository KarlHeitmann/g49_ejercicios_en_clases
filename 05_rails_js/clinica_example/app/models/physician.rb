class Physician < ApplicationRecord
  #has_many :appointments, dependent: :destroy_all # TAREA: Revisar el dependent destroy_all, y como influiría con Physician.destroy_all
  has_many :appointments
  has_many :patients, through: :appointments
  validates :name, :speciality, presence: true
end
