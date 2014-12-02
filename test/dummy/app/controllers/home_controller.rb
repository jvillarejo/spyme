class HomeController < ApplicationController

  def start
  end

  def my_location
    @location = current_location
  end
end