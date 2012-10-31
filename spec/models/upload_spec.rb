describe Upload do

  it "should be invalid if file not present" do
    Upload.new.should_not be_valid
  end

  it "should be valid if file present" do
    Upload.new(:upload_file => "myfile.tab").should be_valid
  end

end
