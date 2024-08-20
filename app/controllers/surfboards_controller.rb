class SurfboardsController < ApplicationController

  def new
    @surfboard = Surfboard.new
  end

  def create
    @surfboard = Surfboard.new(list_params)
    @surfboard.user = current_user
    if @surfboard.save
      redirect_to surfboards_path # change path to have surfboard id?
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:surfboard).permit(:name, :details, :price, :address, :photo)
  end

end
