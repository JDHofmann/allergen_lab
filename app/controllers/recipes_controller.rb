class RecipesController < ApplicationController
  before_action :recipe_find, only: [:show, :edit, :update, :destroy]
  
  def index 
    @recipes = Recipe.all
  end

  def show 
    # @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create 
    recipe = Recipe.create(recipe_params)
    if recipe.valid?
      flash[:success] = "This is working"
    redirect_to recipe_path(recipe)
    else
      flash[:error] = recipe.errors.full_messages
      redirect_to new_recipe_path
    end
  end

  def edit
  end

  def update
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private 
  def recipe_find
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit!
  end
end
