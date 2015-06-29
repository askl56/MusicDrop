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

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
