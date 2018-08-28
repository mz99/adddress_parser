class LocationsController < ApplicationController

  def create
    if geo_params[:address]
      result = GeocoderService.new(geo_params[:address])
      render json: result
    else
      render json: { error: "Invalid address"}, status: 400
    end
  end

  private

  def geo_params
    params.require(:geo).permit(:address)
  end
end
