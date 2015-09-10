class PlacesController < ApplicationController


  def show
    place = Place.find(params[:id])

    render partial: "show", layout: false, locals: { show_item: place }
  end
end
