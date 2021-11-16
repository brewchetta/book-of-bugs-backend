class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render json: @categories, :include => bug_items
  end

  def show
    @category = Category.find(params[:id])
    render json: @category, :include => bug_items
  end

end
