class HomeController < ApplicationController
  def index
    @characters = Character.page(params[:page]).per(10)
  end

  def about
  end
end
