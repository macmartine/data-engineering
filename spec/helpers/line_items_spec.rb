require 'spec_helper'

describe LineItemsHelper do

	context "total_items_sold" do
	  it "should return nil when no line items are present" do
	    helper.total_items_sold(nil).should be_nil
	  end

	  it "should calculate total items sold" do
	  	line_items = Array.new
	  	line_items.push(LineItem.new(:purchase_count => 12))
	  	line_items.push(LineItem.new(:purchase_count => 3))
	    helper.total_items_sold(line_items).should equal(15)
	  end
  end

	context "total_revenue" do
	  it "should return nil when no line items are present" do
	    helper.total_revenue(nil).should be_nil
	  end

	  it "should calculate total items sold" do
	  	li1 = LineItem.new(:purchase_count => 6, :item => Item.new(:price => "3"))
	  	li2 = LineItem.new(:purchase_count => 3, :item => Item.new(:price => "7"))
	  	line_items = [li1, li2]
	    helper.total_revenue(line_items).should == '$39.00'
	  end
  end

end
