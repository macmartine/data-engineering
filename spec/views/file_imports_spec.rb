require 'spec_helper'

describe "file_imports/new.html.haml" do
	include Devise::TestHelpers

  let(:new_file_import) { mock_model('FileImport').as_new_record.as_null_object }

	before (:each) do
	  @user = create(:user)
	  sign_in @user
    assign :file_import, new_file_import
	end

	it "should include 'Import transactions' link" do
	  render
	  rendered.should include("Import transactions")
	end

end
