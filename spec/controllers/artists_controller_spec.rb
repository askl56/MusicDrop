require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do

  describe "GET index" do
    it "returns http success" do
      sign_in
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET show" do
    it "returns http success" do
      sign_in
      get :show, artist: "50 Cent"
      expect(response).to have_http_status(:success)
    end
  end
end
