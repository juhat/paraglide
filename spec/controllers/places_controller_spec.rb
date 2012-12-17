require 'spec_helper'

describe PlacesController do
  include Devise::TestHelpers

  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
    @place = FactoryGirl.create(:place)
  end

  describe "GET 'index'" do

    it "should be successful" do
      get :index
      response.should be_success
    end

  end

  describe "GET 'show'" do

    it "should be successful" do
      get :show, id: @place.id
      response.should be_success
    end

  end

  describe "GET 'new'" do

    it "should be successful" do
      get :new
      response.should be_success
    end

  end

end