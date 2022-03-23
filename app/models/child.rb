class Child < ApplicationRecord
  belongs_to :parent
  belongs_to :booking

  validates :name, presence: true
  validates :age, inclusion: 1..13
end
