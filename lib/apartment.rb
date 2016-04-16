require_relative "dwelling.rb"

class Apartment < Dwelling

  attr_reader :rent_per_month, :lease_start_date, :lease_end_date

  def initialize(address, city, state, zip, rent, lease_start_date, lease_end_date)
    super(address, city, state, zip)
    @rent_per_month   = rent
    @lease_start_date = lease_start_date
    @lease_end_date   = lease_end_date
  end

  # - full?
  # - add_roommate
  # - remove_roommate
end
