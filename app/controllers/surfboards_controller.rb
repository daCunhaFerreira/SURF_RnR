class SurfboardsController < ApplicationController

  def index
    @surfboards = Surfboard.all
    if params[:query].present?
      @surfboards = Surfboard.super_search(params[:query])
    end
  end

  def show
    @surfboard = Surfboard.find(params[:id])
    @booking = @booking = Booking.new
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

  def my_boards
    @surfboards = Surfboard.where(user: current_user)
  end

  def edit
    @surfboard = Surfboard.find(params[:id])
  end

  def update
    @surfboard = Surfboard.find(params[:id])

    if params[:surfboard][:remove_pictures].present?
      params[:surfboard][:remove_pictures].each do |picture_id|
        @surfboard.pictures.find(picture_id).purge
      end
    end

    # Update surfboard details and attach new pictures if provided
      if @surfboard.update(surfboard_update_params)
        if params[:surfboard][:pictures].present?
          @surfboard.pictures.attach(params[:surfboard][:pictures])
        end

        redirect_to my_boards_surfboards_path, notice: 'Surfboard was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @surfboard = Surfboard.find(params[:id])
    @surfboard.destroy
    redirect_to my_boards_surfboards_path, notice: 'Surfboard was successfully deleted.'
  end

  private

  def surfboard_params
    params.require(:surfboard).permit(:name, :details, :price, :address, pictures: [])
  end

  def surfboard_update_params
    params.require(:surfboard).permit(:name, :details, :price, :address)
  end
end
