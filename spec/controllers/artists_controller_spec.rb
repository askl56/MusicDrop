require 'rails_helper'

RSpec.describe ArtistsController, type: :controller do
  context 'with correct credentials' do
    describe 'GET show' do
      it 'returns http success' do
        sign_in
        get :show, id: '50 Cent'
        expect(response).to have_http_status(:success)
      end

      it 'renders the show template' do
        sign_in
        get :show, id: '50 Cent'
        expect(response).to render_template :show
      end
    end
  end

  context 'without correct credentials' do
    describe 'GET #SHOW' do
      it 'blocks unauthenticated access' do
        sign_in nil
        get :show, id: '50 Cent'
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
