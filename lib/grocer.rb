def find_item_by_name_in_collection(name, collection)
  collection.each do |index|
    if name == index[:item]
      return index
    end
  end 
  return nil
end

def consolidate_cart(cart)
  count = 1
  cart_combined = []
  cart.each do |item_info|
    item_info[:count] = 1
    if !cart_combined.include? item_info
      cart_combined.push(item_info)
    else
      for i in cart_combined
        i[:count] += 1
      end
    end
  end
  return cart_combined
end

grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false }
    ]

unconsolidated_cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
    ]
  
#find_item_by_name_in_collection("CHOLULA", grocery_shelf)
puts consolidate_cart(unconsolidated_cart)