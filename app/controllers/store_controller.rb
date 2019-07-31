class StoreController < ApplicationController
  include Counter
  before_action :set_counter
  
  def index
    @products = Product.order(:title)
    @date = Time.new.strftime("%d-%m-%Y %H:%M")
    @time = Time.new.strftime("%H:%M")

    @counter_display = nil;
    if @store_counter > 5
      @counter_display = "Store visited #{@store_counter.to_s}  #{"time".pluralize(@store_counter)}"
    end

  end
end
