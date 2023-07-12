class PublishersController < ApplicationController
  def index
    @publishers = Publisher.page(params[:page]).per(10)
  end

  def show
    @publisher = Publisher.find(params[:id])
  end
  def characters
    @publisher = Publisher.find(params[:id])
    @characters = @publisher.characters.page(params[:page]).per(10)

    render partial: 'characters/list', locals: { characters: @characters }
  end
end
