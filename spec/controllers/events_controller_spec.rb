require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  let(:user) { create(:user) }

  before(:each) do
    sign_in(user)
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
