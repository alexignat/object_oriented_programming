# Input 1:
# 1 book at 12.49
# 1 music CD at 14.99
# 1 chocolate bar at 0.85

# Input 2:
# 1 imported box of chocolates at 10.00
# 1 imported bottle of perfume at 47.50

# Input 3:
# 1 imported bottle of perfume at 27.99
# 1 bottle of perfume at 18.99
# 1 packet of headache pills at 9.75
# 1 box of imported chocolates at 11.25

class Tax_exempt
end

# Imported item class
# Is able to take an item, and find its final sale price with the improt tax

class Imported

  attr_accessor :item, :price

  def initialize(item, price)
    @item = item
    @price = price
  end

  # def get_product_info
  #   puts "What is the item?"
  #   @item = gets.chomp
  #   puts "What is the price?"
  #   @price = gets.chomp.to_i
  # end


  def import_tax
    item_with_tax = @price + (@price * 0.15)
  end
end


perfume = Imported.new(perfume, 12.00)
puts perfume.import_tax


