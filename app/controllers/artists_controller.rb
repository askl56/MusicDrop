class ArtistsController < ApplicationController

  require 'rockstar'

  def index
    if !params[:artist_name].empty?
      @artists = Rockstar::Artist.search(params[:artist_name])
    else
      redirect_to root_path
    end
  end

  def show
    @artist = Rockstar::Artist.find(params[:id])
  end
end
