class IngredientsController < ApplicationController
  before_action :ingredients_find, only: [ :show, :edit, :update, :destroy]

  def index 
    @ingredients = Ingredient.all
  end

  def show 
    # @ingredient = Ingredient.find(parmas[:id])
  end

  private 

  def ingredients_find 
    @ingredient = Ingredient.find(parmas[:id])
  end
end
