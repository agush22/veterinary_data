class Customer < ActiveRecord::Base
  has_many :pets
  has_many :appointments, through: :pets

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable
end
