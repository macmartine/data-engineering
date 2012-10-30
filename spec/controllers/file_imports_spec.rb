require 'spec_helper'

describe FileImportsController do
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
		it "renders the 'index' template on success" do
			CSVLib.stub!(:new).and_return(true)
			post :create
	  	response.should redirect_to transactions_path
		end
		it "renders the 'new' template on failure" do
			CSVLib.stub!(:new).and_return(false)
			post :create
	  	response.should render_template("new")
		end
	end

end




