class BookingsController < ApplicationController
  def index
    @parent = Parent.all
    @booking = Booking.all
  end

  def create
    @parent = Parent.find[:parent_id]
    @babysitter = Babysiter.find[:babysitter_id]
    @booking = Booking.new(booking_params)
    @booking.parent = @parent
    if @booking.save
      redirect_to booking_path
    else
      render booking_path(@booking)
    end
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
