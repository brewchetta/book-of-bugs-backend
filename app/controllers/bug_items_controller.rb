class BugItemsController < ApplicationController
  before_action :find_bug, only: [:show, :destroy]

  def index
    @bugs = BugItems.all
    render json: @bugs, include: categories
  end

  def show
    render json: @bug, include: categories
  end

  def destroy
    @bug.destroy
    render json: @bug, include: categories
  end

  private

  def find_bug
    @bug = BugItems.find(params[:id])
  end

end
