class RecipesController < ApplicationController
  before_action :recipe_find, only: [ :show, :edit, :update, :destroy]
  
  def index 
    @recipes = Recipe.all
  end

  def show 
    # @recipe = Recipe.find(params[:id])
  end

  def new 

  end

  def create 

  end


  private 
  
  def recipe_find
    @recipe = Recipe.find(params[:id])
  end
end
