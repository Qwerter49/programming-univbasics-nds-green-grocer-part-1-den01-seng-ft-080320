require 'pry'
def find_item_by_name_in_collection(name, collection)
  collection.each do |items|
    if items[:item] == name 
      return items
    end
  end
  nil
end


def consolidate_cart(cart)
  new_cart = []
  i = 0 
  while i < cart.length 
    new_cart_item = find_item_by_name_in_collection(cart[i][:item], new_cart)
    if new_cart_item
      new_cart_item[:count] += 1 
    else 
      new_cart_item = {
        :item => cart[i][:item],
        :price => cart[i][:price],
        :clearance => cart[i][:clearance],
        :count => 1 
      }
      new_cart << new_cart_item
    end
    i += 1 
  end 
  new_cart
end
  