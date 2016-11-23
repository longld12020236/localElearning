class UserLessonsController < ApplicationController

  def create
    @userlesson = UserLesson.new(userlesson_params)
    @userlesson.user_id = current_user.id
    @userlesson.lesson_id = params[:lesson_id]
    if @userlesson.save
      redirect_to :back
    end
  end



  private
    def userlesson_params
      params.permit(:id)
    end
end
