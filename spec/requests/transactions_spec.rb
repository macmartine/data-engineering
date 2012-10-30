require 'spec_helper'

describe 'transactions', :type => :request do

	before (:each) do
    user = User.create(:email    => "email@example.com",
                       :password => "my_secure_password")

    visit "/users/sign_in"

    fill_in "Email",    :with => user.email
    fill_in "Password", :with => user.password

    click_button "Sign in"
	end

	it "goes to add transitions page" do
		page.should have_content "Signed in successfully."
	  click_link "Import transactions"
	  page.should  have_content "Choose a file to import transactions."
	end

end
