class CategoriesController < ApplicationController
  def index
  end

  def show
    @category = Category.find(params[:id])
    @videos = Video.find(:all, :order => 'created_at DESC', :conditions => ['category = ?', @category.name])
  end

end
