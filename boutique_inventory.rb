class BoutiqueInventory
    def initialize(items)
      @items = items
    end
  
    def item_names
       item = @items
      a =[]
      item.select do |i|
      a << i.fetch(:name)
      end
      a.sort
    end
  
    def cheap
      @items.select{|i|
         i[:price] < 30 
      }.flatten
    end
  
    def out_of_stock
        @items.select{|i|
         i[:quantity_by_size].empty?
        
        }
        
    end
  
    def stock_for_item(name)
      @items.select{|i|
        if i[:name] == name 
           return i[:quantity_by_size] # cai nay phai de return no moi chieu pass :)
        end
    }.flatten
    end
  
    def total_stock
        a=[]
        @items.select{|i|
            i[:quantity_by_size].each_value {|v|  a<<v}
        }
       a.sum
    end
  
    private
    attr_reader :items
end
b = BoutiqueInventory.new([
    {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
    {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
    {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
    {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
  ])
b.item_names
b.cheap
b.out_of_stock
b.stock_for_item("Black Short Skirt")

=begin
You run an online fashion boutique. Your big annual sale is coming up, so you want to create 
some functionality to help you take stock of your inventory to make sure you're ready.
A single item in the inventory is represented by a hash, and the whole inventory is an array of 
these hashes.

task1: Return a list of the names of the items in stock
Implement BoutiqueInventory.item_names which should return a list of the item names, 
ordered alphabetically.

task2: Return any items that are cheap
Implement BoutiqueInventory.cheap which should return any items that cost less than $30.

task3: Return any items that are out of stock
Implement BoutiqueInventory.out_of_stock which should return any items that have no stock
 (where quantity_by_size is empty).

 task4: Return a single item's stock
Implement BoutiqueInventory.stock_for_item(name) to return the stock of an item by its name

task5: Return the total stock
Implement BoutiqueInventory.total_stock to calculate the total amount of items in your storeroom