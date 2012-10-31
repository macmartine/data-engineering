require 'spec_helper'

describe "uploads/new.html.haml" do
	include Devise::TestHelpers

  let(:new_upload) { mock_model('Upload').as_new_record.as_null_object }

	before (:each) do
	  @user = create(:user)
	  sign_in @user
    assign :upload, new_upload
	end

	it "should include 'Import transactions' link" do
	  render
	  rendered.should include("Import line items")
	end

end
