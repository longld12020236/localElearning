class CategoriesController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    end
  end

  def show
    @category = Category.find(params[:id])
    @lessons = @category.lessons.paginate(page: params[:page])
  end

  def index
   @categories = Category.all
  @categories = Category.paginate(page: params[:page])
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.present?
      @category.destroy
    end
    redirect_to :back
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
        flash[:success] = "Updated"
        redirect_to categories_path
      else
        render 'edit'
      end
  end
  private

  def category_params
    params.require(:category).permit(:tittle)
  end
end
