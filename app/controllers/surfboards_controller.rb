class SurfboardsController < ApplicationController

  def index
    @surfboards = Surfboard.all
    if params[:query].present?
      @surfboards = Surfboard.super_search(params[:query])
    end
  end

  def show
    @surfboard = Surfboard.find(params[:id])

    @markers =
      {
        lat: @surfboard.latitude,
        lng: @surfboard.longitude,
        marker_html: render_to_string(partial: "marker")
      }
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
    params.require(:surfboard).permit(:name, :details, :price, :address, :picture)
  end

end
