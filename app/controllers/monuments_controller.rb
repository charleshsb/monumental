class MonumentsController < ApplicationController
  def new
    @monument = Monument.new
  end

  def create
    @monument = Monument.find(params[:id])
    if @monument.save
      redirect_to monument_path(@monument)
    else
      render :new
    end
  end

  def index
    @monuments = Monument.all
  end

  def show
    @monument.find(params[:id])
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
    redirect_to monuments_path
  end

  private

  def monument_params
    params.require(:monument).permit(:title, :address, :description, :price, :photo, photos: [])
  end
end
