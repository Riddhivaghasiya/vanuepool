class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :address, presence: true
  validates :contact_no, numericality: { only_integer: true }
  validates :email, confirmation: true
  has_many :events
  has_many :bookings, :dependent => :destroy
end
