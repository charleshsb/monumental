class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact]
  def home
  end

  def dashboard
    @bookings = Booking.where(user_id: current_user)
    @monuments = Monument.where(user_id: current_user)
  end

  def about
  end

  def contact
  end
end
