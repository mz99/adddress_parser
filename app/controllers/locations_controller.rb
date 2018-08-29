class LocationsController < ApplicationController

  def create
    if geo_params[:address]
      result = GeocoderService.new(geo_params[:address])
      address_components = result.parse_address
      render json: address_components
    else
      render json: { error: "Invalid address"}, status: 400
    end
  end

  private

  def geo_params
    params.require(:geo).permit(:address)
  end
end
