class Doctor < ActiveRecord::Base
  validates :name, presence: true
  validates :name, length: { maximum: 35 }
  validates :zip, length: { maximum: 5 }
  validates :zip, numericality: { only_integer: true }
  validates :experience,  inclusion: { in: 1..100 }
end
