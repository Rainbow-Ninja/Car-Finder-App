class HomeController < ApplicationController
  def page
    @cars = Car.all
    @avatar = Avatar.first
  end
end
