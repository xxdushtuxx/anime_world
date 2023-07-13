class CharactersController < ApplicationController
  def index
    @characters = Character.page(params[:page]).per(10)
  end

  def show
    @character = Character.find(params[:id])
    @publisher = @character.publisher
  end

  def search
    if params[:query].present?
      @characters = Character.where("name LIKE ?", "%#{params[:query]}%").page(params[:page]).per(10)
    else
      @characters = Character.page(params[:page]).per(10)
    end

    if @characters.empty?
      flash.now[:notice] = "No characters found."
    end
  end
  
end
