# Object Oriented Programming
# Assingment 4 Exercise 3


class Receipt
  # This add_items method will take items and add them to an array
  def add_item(item)
    @item = item
  end
end

receipt = Receipt.new

apple = receipt.add_item("apple")
puts apple
























# # This class is tax exempt
# class TaxExempt
#   attr_accessor :item, :price

#   def initialize(item, price)
#     @item = item
#     @price = price
#   end

#   def tax
#     tax = (@price * 0)
#   end
# end

# book = TaxExempt.new(book, 10)
# puts book.tax

# # RegularItem class has a tax amount of 10%
# # The class calculates the tax rate
# # Takes item and price as arguments

# class RegularItem
#   attr_accessor :item, :price

#   def initialize(item, price)
#     @item = item
#     @price = price
#   end

#   def tax
#     tax = (@price * 0.10).to_f
#   end
# end

# perfume = RegularItem.new(perfume, 10)
# puts perfume.tax

# # ImportedItem class has a tax amount of 15%
# # The class calculates the tax rate
# # Taks an item and price as arguments

# class ImportedItem
#   attr_accessor :item, :price

#   def initialize(item, price)
#     @item = item
#     @price = price
#   end

#   def tax
#     tax = (@price * 0.15).to_f
#   end
# end

# chocolate_bar = ImportedItem.new(chocolate_bar, 10)
# puts chocolate_bar.tax









