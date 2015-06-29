require 'rails_helper'

RSpec.describe ArtistsController, :type => :controller do
  before(:each) do
    artist = Rockstar::Artist.new("50 Cent")
  end

  describe "GET index" do
    it "returns http success" do
      get :index, artist: "50 Cent"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, artist: "50 Cent"
      expect(response).to have_http_status(:success)
    end
  end
end
