class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @date = Time.new.strftime("%d-%m-%Y %H:%M")
    @time = Time.new.strftime("%H:%M")
  end
end
