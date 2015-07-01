require 'rails_helper'

RSpec.describe ArtistsController, regressor: true do
  # === Routes (REST) ===
  it { should route(:get, '/artists').to('artists#index', {}) }
  it { should route(:get, '/artists/1').to('artists#show', id: '1') }
  # === Callbacks (Before) ===
  it { should use_before_filter(:verify_authenticity_token) }
  it { should use_before_filter(:set_xhr_redirected_to) }
  it { should use_before_filter(:set_request_method_cookie) }
  it { should use_before_filter(:authenticate_user!) }
  # === Callbacks (After) ===
  it { should use_after_filter(:verify_same_origin_request) }
  it { should use_after_filter(:abort_xdomain_redirect) }
  # === Callbacks (Around) ===
end
