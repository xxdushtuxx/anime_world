class ComicBooksController < ApplicationController
  def index
    @comic_books = ComicBook.page(params[:page]).per(30)
  end

  def show
    @comic_book = ComicBook.find(params[:id])
  end
end
