class Booking < ActiveRecord::Base

  has_many :passengers, foreign_key: :booking_id
  belongs_to :flight

  accepts_nested_attributes_for :passengers


end
