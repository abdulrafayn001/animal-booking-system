class Admin::BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end
end
