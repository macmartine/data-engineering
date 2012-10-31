require 'spec_helper'

describe UploadsController do
  include Devise::TestHelpers

  before (:each) do
    @user = create(:user)
    sign_in @user
  end

  describe "GET new" do
    it "renders the index template" do
      get :new
      response.should render_template("new")
    end
  end

  describe "POST create" do
    before :each do
      @file = fixture_file_upload('/files/example_input.tab', 'text/plain')
    end

    it "renders the 'index' template on success" do
      post :create, :upload => {:upload_file => @file}
      response.should redirect_to line_items_path
    end

    it "renders the 'new' template on failure" do
      post :create, :upload => {:upload_file => nil}
      response.should render_template("new")
    end
  end

end




