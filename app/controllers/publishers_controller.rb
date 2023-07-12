class PublishersController < ApplicationController
  def index
    @publishers = Publisher.page(params[:page]).per(10)
  end

  def show
    @publisher = Publisher.find(params[:id])
  end
end
