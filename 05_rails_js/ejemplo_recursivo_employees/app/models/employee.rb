class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :sub_employees, class_name: "Employee", foreign_key: "boss_id"

  belongs_to :boss, class_name: "Employee", optional: true
end
