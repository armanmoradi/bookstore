class CategoriesController < ApplicationController
  def new
     @page_title = 'Add New category'
    @category = Category.new
  end

  def create
   @category = Category.new(category_params)
   if @category.save
      flash[:notice] = "Category Created"
   redirect_to categories_path
   else
    render 'new'
   end
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    flash[:notice] = "category Updated"
   redirect_to categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = 'Category Removed'
    redirect_to categories_path
  end

  def index
   @categories = Category.all 
  end

  def show
   @category = Category.find(params[:id])
   @categories = Category.all 
   @books = @category.books
  end
  private
     def category_params
   params.require(:category).permit(:name)
  end
end
