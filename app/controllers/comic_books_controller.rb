class ComicBooksController < ApplicationController
  def index
    @comic_books = ComicBook.all
  end

  def show
    @comic_book = ComicBook.find(params[:id])
  end
end
