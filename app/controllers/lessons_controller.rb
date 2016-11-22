class LessonsController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  def new
    @comment=Comment.all
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.category_id = params[:category_id]
    if @lesson.save
      redirect_to :back
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    if @lesson.present?
      @lesson.destroy
    end
    redirect_to :back
  end

  private

  def lesson_params
    params.require(:lesson).permit(:tittle)
  end
end
