require 'spec_helper'

describe "Places" do
  before (:each) do
    @user = FactoryGirl.create(:user)
  end

  describe "GET /" do
    it "it lists all the places" do
      get root_path
      response.status.should be(200)
    end
  end
end
