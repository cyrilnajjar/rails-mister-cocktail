class IngredientsController < ApplicationController

   def index
    @ingredients = Ingredients.all
  end


  def show
    @ingredients = @cocktail.ingredients
    @ingredient = Ingredient.new
  end


  def new
    @ingredient = Ingredient.new
  end


  def edit
  end


  def create
    @ingredient = Ingredient.new(params[:ingredient])
    @ingredient.save

    redirect_to ingredient_path(@ingredient)
  end


  def update

  end


  def destroy

  end

end
