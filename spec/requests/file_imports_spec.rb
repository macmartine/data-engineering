require 'spec_helper'

describe 'file_imports', :type => :request do

	before (:each) do
    user = User.create(:email    => "email@example.com",
                       :password => "my_secure_password")

    visit "/users/sign_in"

    fill_in "Email",    :with => user.email
    fill_in "Password", :with => user.password

    click_button "Sign in"
	end

	it "goes to transitions page on cancel" do
	  visit new_file_import_path
	  click_link "Cancel"
	  current_path.should == transactions_path
	end

end
