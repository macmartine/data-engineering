class LineItem < ActiveRecord::Base
  attr_accessible :item_id, :purchase_count, :purchaser_id
end
