class SurfboardsController < ApplicationController
 
  def index
    @surfboards = Surfboard.all
  end
  
  def new
    @surfboard = Surfboard.new
  end

  def create
    @surfboard = Surfboard.new(surfboard_params)
    @surfboard.user = current_user
    if @surfboard.save
      redirect_to surfboards_path # change path to have surfboard id?
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:name, :details, :price, :address, :photo)
  end

  def show
    @surfboard = Surfboard.find(params[:id])
  end

end
