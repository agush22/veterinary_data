class Appointment < ActiveRecord::Base
  belongs_to :pet
  belongs_to :doctor
  has_one :customer, through: :pet

  validates :pet, presence: true
  validates :doctor, presence: true
  validates :reason, presence: true

  validate :date_cannot_be_in_the_past

  def date_cannot_be_in_the_past
    errors.add(:date_visit, "Can't be in the past") if
    !date_visit.blank? and date_visit < Date.today
  end
end
