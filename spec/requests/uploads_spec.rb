require 'spec_helper'

describe 'uploads', :type => :request do

	before (:each) do
    user = User.create(:email    => "email@example.com",
                       :password => "my_secure_password")

    visit "/users/sign_in"

    fill_in "Email",    :with => user.email
    fill_in "Password", :with => user.password

    click_button "Sign in"
	end

	it "goes to transitions page on cancel" do
	  visit new_upload_path
	  click_link "Cancel"
	  current_path.should == line_items_path
	end

	it "should show error when no file selected" do
	  visit new_upload_path
	  click_link "Cancel"
	  current_path.should == line_items_path
	end

end
