class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @ingredient = Ingredient.new
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    # save the data from the form in a Cocktail instance
    @cocktail = Cocktail.new(cocktail_params)
    # save it in the DB
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit

  end

  def update
    #@cocktail.update(pets_params)
    #cocktail_to cocktail_path(@cocktail)
  end


  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

end
