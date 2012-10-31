class LineItem < ActiveRecord::Base
  attr_accessible :item_id, :purchase_count, :purchaser_id, :item
   has_one :merchant
   belongs_to :purchaser
   belongs_to :item
end
