
class CashRegister
	attr_accessor :total, :discount, :items, :last_transaction

	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@items = []
	end

	def add_item(title, amount, quantity = 1)
		# self.title = title
		self.total += amount * quantity
		quantity.times do
			items << title
		end
		self.last_transaction = amount * quantity
	end

	def apply_discount
		if self.discount != 0
			self.total -= self.total*discount/100
			"After the discount, the total comes to $#{self.total}."
		else
			"There is no discount to apply."
		end
	end

	def void_last_transaction
		self.total -= last_transaction
	end
end













































# require 'pry'
# class CashRegister
# 	attr_accessor :total, :discount, :items, :last_transaction
# 	def initialize(discount = 0)
# 		@total = 0
# 		@discount = discount
# 		self.apply_discount
# 		@items = []

# 	end

# 	def add_item(title, amount, optional = 1)
# 		i = 0
# 		while i < optional
# 			@items << title
# 			@total += amount
# 			i += 1
# 		end
# 		self.last_transaction = amount*optional
# 	end 

# 	def apply_discount
# 		if @discount > 0
# 			@total -= @total*@discount/100
# 			return "After the discount, the total comes to $#{@total}."
# 		else
# 			@total
# 			return "There is no discount to apply."
# 		end
# 	end
# 		#binding.pry

	
# 	def void_last_transaction
# 		self.total = self.total - self.last_transaction
# 	end

# end
