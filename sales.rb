# Object Oriented Programming
# Assingment 4 Exercise 3


# This class is tax exempt
# It includes books, food, and medicine

# class Tax_exempt

#   def initialize(item, price)
#     @item = item
#     @price = price
#   end

#   def to_s
#     puts "#{@item}: #{@price}"
#   end

# end

# book = Tax_exempt.new(book, 12.49)
# chocolate_bar = Tax_exempt.new(chocolate_bar, 0.85)
# headache_pills = Tax_exempt.new(headache_pills, 9.75)

# book.to_s

# RegularItem class has a tax amount of 10%
# The class calculates the tax rate
# Takes item and price as arguments

class RegularItem
  attr_accessor :item, :price

  def initialize(item, price)
    @item = item
    @price = price
  end

  def tax
    tax = (@price * 0.10)
  end
end

perfume = RegularItem.new(perfume, 10)
puts perfume.tax

# ImportedItem class has a tax amount of 15%
# The class calculates the tax rate
# Taks an item and price as arguments




# perfume = Imported.new(perfume, 47.50)
# puts perfume.import_tax





