class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @booking = @review.booking
    if @review.save
      redirect_to booking_path(@booking)
    else
      render "skills/show"
    end
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content, :stars, :title, :booking_id)
  end
end
