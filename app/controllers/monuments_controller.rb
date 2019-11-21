class MonumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def new
    @monument = Monument.new
  end

  def create
    @monument = Monument.new(monument_params)
    @monument.user = current_user
    if @monument.save
      redirect_to monument_path(@monument)
    else
      render :new
    end
  end

  def index
    if params[:query].present?
      @monuments = Monument.search_by_title_and_address()
    else
      @monuments = Monument.all
    end

  end

  def show
    @monument = Monument.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @monument = Monument.find(params[:id])
  end

  def update
    @monument = Monument.find(params[:id])
    @monument.update(monument_params)
    @monument.save
    redirect_to monument_path(@monument)
  end

  def destroy
    @monument = Monument.find(params[:id])
    @monument.destroy
    redirect_to dashboard_path
  end

  private

  def monument_params
    params.require(:monument).permit(:title, :address, :description, :price, photos: [])
  end
end
