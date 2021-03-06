class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      # do something else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.new
  end

  def show
    @cocktails = Cocktail.find(params[:id])
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
