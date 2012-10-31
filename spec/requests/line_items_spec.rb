require 'spec_helper'

describe 'line_items', :type => :request do

  before (:each) do
    user = User.create(:email    => "email@example.com",
                       :password => "my_secure_password")

    visit "/users/sign_in"

    fill_in "Email",    :with => user.email
    fill_in "Password", :with => user.password

    click_button "Sign in"
  end

  context "Import line items button" do
    it "goes to add line items page" do
      page.should have_content "Line items"
      click_link "Import line items"
      page.should  have_content "Cancel"
    end
  end

end
