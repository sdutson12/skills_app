class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @booking = Booking.new(booking_params)
    @booking.skill = @skill
    @booking.user = current_user
    @booking.status = 'Pending'
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "skills/show"
    end
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :num_of_hours)
  end
end
