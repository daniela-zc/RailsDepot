class ApplicationController < ActionController::Base
  before_action :set_app_time

  def set_app_time
    @date = Time.new.strftime("%d-%m-%Y %H:%M")
    @time = Time.new.strftime("%H:%M")
  end

end
