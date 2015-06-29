class ArtistsController < ApplicationController

  def index
    if !params[:artist].empty?
      @artists = Rockstar::Artist.search(params[:artist])
    else
      redirect_to root_path
    end
  end

  def show
    @artist = Rockstar::Artist.find(params[:id])
  end
end
