class HomeController < ApplicationController
  def index
    @characters = Character.all
  end

  def about
  end
end
