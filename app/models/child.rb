class Child < ApplicationRecord
  belongs_to :parent
  has_many :bookings

  validates :name, presence: true
  validates :age, inclusion: 2..12
end
