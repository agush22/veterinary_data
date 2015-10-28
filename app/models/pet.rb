class Pet < ActiveRecord::Base
  belongs_to :customer
  has_many :appointments

  validates :name, presence: true
  validates :name, length: { maximum: 35 }
  validates :breed, presence: true
  validates :breed, length: { maximum: 35 }
  validates :kind, inclusion: { in: %w(bird dog cat)}
  validates :age, numericality: { only_integer: true }
  validates :age, presence: true
  validates :weight, numericality: { only_integer: true }
  validates :weight, presence: true
  validates :last_visit, presence: true
end
