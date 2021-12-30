require 'ostruct'
class BoutiqueInventory
    attr_reader :items
  
    def initialize(items)
      @items = items
    end
  
    def item_names
      arr = []
     @items.select do |i|
        op = OpenStruct.new i
        arr<< op[:name]
     end
     p arr
    end
  
    def total_stock
      arr=[]
      @items.select do |i|
        op = OpenStruct.new i
        arr << op[:quantity_by_size]
      end
      sum =0
      arr.each {|i|
       i.each_value{|v| sum +=v}
      }
      p sum
    end
end 
BoutiqueInventory.new([
  {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
  {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
  {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
  {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
]).item_names


=begin
You're continuing to work on the stock management system you built previous. Since discovering OpenStruct and block
 shortcuts, you've decided to refactor the code a little. Rather than storing the items as hashes, you're going to 
 utilize your newfound skills.

 task1: Allow retrievable of items
 You want to continue to retrieve the list of items in stock, but this time they should be objects that can have methods
 called on them.
            inventory = BoutiqueInventory.new([
            {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
            {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
            {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
            {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
          ])

          inventory.items.first.name
          # => "Maxi Brown Dress"

          inventory.items.first.price
          # => 65

          inventory.items.size
          # => 4

 task2: Refactor item_names to use the new block shortcut you've learnt rather than 
 hashes. As a reminder, the method should return:
BoutiqueInventory.new([
  {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
  {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
  {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
  {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
]).total_stock

# => 36


=end