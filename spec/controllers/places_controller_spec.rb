require 'spec_helper'

describe PlacesController do
  include Devise::TestHelpers

  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "GET 'index'" do

    it "should be successful" do
      get :index
      response.should be_success
    end

  end

end