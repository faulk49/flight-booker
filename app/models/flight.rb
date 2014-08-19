class Flight < ActiveRecord::Base

  belongs_to :from_airport, class_name: "Airport"
  belongs_to :to_airport, class_name: "Airport"
  has_many :bookings
  has_many :passengers, :through => :bookings




  def self.search(params)
    if params[:search]
      Flight.on_date(params[:date].to_date)
            .where(from_airport_id: params[:from], to_airport_id: params[:to])
            .includes(:from_airport, :to_airport)
    end

  end

  def self.flight_dates
    all.collect { |f| [f.formatted_date, f.start_time.to_date] }.uniq
  end

    def self.on_date(date)
    where(start_time: date.beginning_of_day..date.end_of_day)
  end

  def formatted_date
    start_time.to_date.strftime("%m/%d/%y")
  end



end
