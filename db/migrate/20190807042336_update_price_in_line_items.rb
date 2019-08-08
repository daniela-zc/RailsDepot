class UpdatePriceInLineItems < ActiveRecord::Migration[5.2]
  def up
    LineItem.all.each do |line_item|
      product_price = line_item.product.price
      line_item.price = product_price
      line_item.save!
    end
  end
end
