class SurfboardsController < ApplicationController
  def index
    @surfboards = Surfboard.all
  end

  def show
    @surfboard = Surboard.find(params[:id])
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:name, :details, :price, :address, :photo)
  end
end
