class Purchaser < ActiveRecord::Base
  attr_accessible :name
  has_many :line_items
end
