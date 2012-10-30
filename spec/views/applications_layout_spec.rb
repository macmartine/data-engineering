require 'spec_helper'

describe "layouts/application.html.haml" do
	include Devise::TestHelpers

	context "when logged out" do

	  it "shouldn't show login link" do
	  	render
	    rendered.should_not include("Sign in")
	  end

	end

  context "when logged in" do

		before (:each) do
		  @user = create(:user)
		  sign_in @user
		end

   	it "show logout link" do
	    render
		  rendered.should include("Sign out")
		end

  end

end
