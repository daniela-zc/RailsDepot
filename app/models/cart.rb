class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy
  
  def add_product(product)
    # For logs .. 
    # logger.debug "add_product !!!!"
    # logger.debug product[:product][:id]  --> not working as set in the book. Product comes as hash and throws 'method not found' exception
    product_id = product[:product][:id]
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end

end
