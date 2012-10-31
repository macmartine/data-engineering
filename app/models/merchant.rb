class Merchant < ActiveRecord::Base
  attr_accessible :address, :name
  has_many :items
  has_many :line_items, :through => :items
end
