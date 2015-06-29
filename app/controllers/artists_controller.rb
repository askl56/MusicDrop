class ArtistsController < ApplicationController


  def index
    @artists = Rockstar::Artist.new('Cher', :include_info => true)
  end

  def show
    @artist = Rockstar::Artist.find(params[:id])
  end
end
