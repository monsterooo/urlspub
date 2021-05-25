class HomeController < ApplicationController
  def index
    @articles = Target.category
  end
end
