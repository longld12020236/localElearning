module SessionsHelper
	def log_in(user)
		session[:user_id] = user.id
	end

	def current_user?(user)
	    user == current_user
	  end

	def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_lesson
  	@current_lesson ||= Lesson.find_by(id: session[:lesson_id])
  end

  def current_lesson?(lesson)
  	lesson == current_lesson
  end

	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
end
