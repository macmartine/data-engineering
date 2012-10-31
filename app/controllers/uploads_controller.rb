require 'csv'
class UploadsController < ApplicationController

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(params[:upload])
    if @upload.valid?
      CSV.parse(params[:upload][:upload_file].read.to_s, {:headers => true, :col_sep => "\t"}).each do |row|
        purchaser_first_name  = row['purchaser name'].split[0]
        purchaser_last_name   = row['purchaser name'].split[1]
        purchaser             = Purchaser.find_or_create_by_first_and_last(purchaser_first_name, purchaser_last_name)
        merchant              = Merchant.find_or_create_by_name_and_address(row['merchant name'], row['merchant address'])
        item                  = Item.find_or_create_by_merchant_id_and_description_and_price(merchant.id, row['item description'], row['item price'])
        line_item             = LineItem.create(:purchaser_id => purchaser.id, :item_id => item.id, :purchase_count => row['purchase count'])
      end
    end

    if @upload.valid?
      redirect_to line_items_path
    else
      flash[:error] = @upload.errors.messages.first
      render :action => "new"
    end
  end

end
