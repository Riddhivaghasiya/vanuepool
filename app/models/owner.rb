class Owner < ApplicationRecord
  validates :name, :address, presence: true
  validates :contact_no, numericality: { only_integer: true }
  validates :email, confirmation: true
  has_many :vanue
  has_many :vanue_amenities, :through => :vanues
end
