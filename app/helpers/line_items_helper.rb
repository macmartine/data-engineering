module LineItemsHelper

	def total_items_sold(line_items)
		return if line_items.nil?
		line_items.collect{|x| x.purchase_count }.inject(0){|sum,x| sum + x }
	end

	def total_revenue(line_items)
		return if line_items.nil?
		amount = line_items.collect{|x| x.purchase_count * x.item.price }.inject(0){|sum,x| sum + x }
		number_to_currency(amount)
	end

end
