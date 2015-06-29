class ArtistsController < ApplicationController
  before_action :authenticate_user!

  def index
    unless params[:artist].empty?
      @artists = Rockstar::Artist.new(params[:artist], include_info: true)
    else
      redirect_to root_path
    end
  end

  def show
    @artist = Rockstar::Artist.new(params[:id], include_info: true)
  end
end
