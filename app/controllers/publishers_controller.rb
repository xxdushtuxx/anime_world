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
  
    render 'characters', locals: { characters: @characters }
  end
  
  def comic_books
    @publisher = Publisher.find(params[:id])
    @comic_books = @publisher.comic_books.page(params[:page]).per(10)
  
    render 'comic_books', locals: { comic_books: @comic_books }
  end
  
end
