require 'pry'
def find_item_by_name_in_collection(name, collection)
  collection.each do |items|
    if items[:item] == name 
      return items
    end
  end
  nil
end

def find_all_items_by_name(name, collection)
  collection.find_all  { |items| items[:items] = name }
end
#.find_all enumerator


def consolidate_cart(cart)
new_cart = []
  cart_with_count = cart.each do |items|
    items[:count] = 1 
  end
  binding.pry

end
  