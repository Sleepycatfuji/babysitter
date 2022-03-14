class Booking < ApplicationRecord
  belongs_to :customers
  belongs_to :babysitters
end
