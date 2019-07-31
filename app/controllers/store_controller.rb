class StoreController < ApplicationController
  include Counter
  before_action :set_counter
  
  def index
    @products = Product.order(:title)

    @counter_display = nil;
    if @store_counter > 5
      @counter_display = "Store visited #{@store_counter.to_s}  #{"time".pluralize(@store_counter)}"
    end

  end
end
