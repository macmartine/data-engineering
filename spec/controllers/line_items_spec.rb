require 'spec_helper'

describe LineItemsController do
  include Devise::TestHelpers

  before (:each) do
    @user = create(:user)
    sign_in @user
  end

  describe "GET index" do
    it "renders the index template" do
      get :index
      response.should render_template("index")
    end
  end

end
