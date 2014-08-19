class FlightsController < ApplicationController

  def index
    @flights = Flight.search(params)
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
    @date_options = Flight.flight_dates
    @num_pass = (1..4).to_a.map { |p| [p, p] }

  end




end
