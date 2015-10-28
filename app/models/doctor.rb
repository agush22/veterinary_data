class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable
  validates :name, presence: true
  validates :name, length: { maximum: 35 }
  validates :zip, length: { maximum: 5 }
  validates :zip, numericality: { only_integer: true }
  validates :experience,  inclusion: { in: 1..100 }
end
