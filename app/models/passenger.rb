class Passenger < ActiveRecord::Base

  belongs_to :flight
  has_many :bookings,  foreign_key: :passenger_id

end
