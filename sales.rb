# Object Oriented Programming
# Assingment 4 Exercise 3


class Receipt
  #Lets us read list throughout the receipt class
  attr_reader :list

  def initialize
    @list = []
  end
  # This add_items method will take items and add them to an array
  def add_item(item)
    @list << item
    end
end

receipt = Receipt.new

class Item
   attr_accessor :item, :price

  def initialize(item, price)
    @item = item
    @price = price
  end

  def to_s
    "#{@item}: #{@price}"
  end
end

# This class is tax exempt
class TaxExempt < Item
 def tax
    tax = (@price * 0)
  end
end

book = TaxExempt.new("book", 10)
receipt.add_item(book)
puts book
puts receipt.list.class

# RegularItem class has a tax amount of 10%
# The class calculates the tax rate
# Takes item and price as arguments

class RegularItem < Item
  def tax
    tax = (@price * 0.10).to_f
  end
end

perfume = RegularItem.new(perfume, 10)
puts perfume.tax

# ImportedItem class has a tax amount of 15%
# The class calculates the tax rate
# Taks an item and price as arguments

class ImportedItem < Item
  def tax
    tax = (@price * 0.15).to_f
  end
end

chocolate_bar = ImportedItem.new(chocolate_bar, 10)
puts chocolate_bar.tax









