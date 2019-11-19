class BookingsController < ApplicationController

  def create
    @monument = Monument.find(params[:monument_id])
    @booking = Booking.new(booking_params)
    @booking.monument = @monument
    @booking.user = current_user
    raise
    if @booking.save
      # il faudra changer ça et rediriger vers le dashboard quand il sera créé
      redirect_to monument_path(@monument)
    else
      # il faudra gérer le cas .save FALSE (workflow a définir)
      render "monuments/show"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # il faudra changer ça et rediriger vers le dashboard quand il sera créé
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :user_id, :monument_id)
  end
end
