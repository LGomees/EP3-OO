class HomeController < ApplicationController
  def index
    @series = Series.limit(4).order("RANDOM()")
  end
end
