# Object Oriented Programming
# Assingment 4 Exercise 3


# This class is tax exempt
# It includes books, food, and medicine

class Tax_exempt

  def initialize(item, price)
    @item = item
    @price = price
  end

  def to_s
    puts "#{@item}: #{@price}"
  end

end

book = Tax_exempt.new(book, 12.49)
chocolate_bar = Tax_exempt.new(chocolate_bar, 0.85)
headache_pills = Tax_exempt.new(headache_pills, 9.75)

book.to_s

# Create a SalesTax class that can be the parent of the Imported class
# The class adds a sales tax of 10%

class RegularItem

  attr_accessor :item, :price

  def initialize(item, price)
    @item = item
    @price = price
  end

  def sales_tax
    @item_with_sales_tax = @price + (@price * 0.10)
  end

end

perfume = RegularItem.new(perfume, 47.50)
puts perfume.sales_tax

# Imported item class
# Inherit the sales tax from SalesTax class

class Imported < RegularItem

  attr_accessor :item, :price

  # def initialize(item, price)
  #   @item = item
  #   @price = price
  # end

  def import_tax
    item_with__import_tax = @price + (@price * 0.05)
  end
end


perfume = Imported.new(perfume, 47.50)
puts perfume.import_tax





