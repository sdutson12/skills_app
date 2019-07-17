class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

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
    @skill = @booking.skill
    if @booking.save
      redirect_to skill_path(@skill)
    else
      render "skills/show"
    end
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_date, :end_date, :skill_id, :user_id)
  end
end
