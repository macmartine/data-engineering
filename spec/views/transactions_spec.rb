require 'spec_helper'

describe "transactions/index.html.haml" do
	include Devise::TestHelpers

	before (:each) do
	  @user = create(:user)
	  sign_in @user
	end

	it "should include 'Import transactions' link" do
	  render
	  rendered.should include("Import transactions")
	end

end
