class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def new
    @categories = Category.all
  	@category = Category.new
  end

  def create
    @categories = Category.all
  	@category = Category.new(category_params)
  	if @category.save
  		redirect_to @category, notice: 'Uma nova categoria foi criada.'
  	else
  		render :new
  	end
  end

  def show
  	set_category
  end	

  def edit
  	set_category
  end

  def destroy
    set_category
    Category.destroy(set_category)
    redirect_to '/categories'
  end

  private

  def category_params
  	params.require(:category).permit(:title)
  end

  def set_category
  	@category = Category.find(params[:id])
  end
end
