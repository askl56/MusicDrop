 class ArtistsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    unless params[:id].empty?
      @artist = Rockstar::Artist.new(params[:id], include_info: true)
    else
      redirect_to root_path
    end
  end
end
