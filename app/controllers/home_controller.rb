class HomeController < ApplicationController
  def index
    @category = Target.category
  end
end
