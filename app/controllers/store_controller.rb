class StoreController < ApplicationController
  include Counter
  before_action :set_counter

  include CurrentCart
  before_action :set_cart
  
  def index
    @products = Product.order(:title)

    if @store_counter > 5
      @counter_display = "Store visited #{@store_counter.to_s}  #{"time".pluralize(@store_counter)}"
    end

  end
end
