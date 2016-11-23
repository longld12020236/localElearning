module SessionsHelper
	def log_in(user)
		session[:user_id] = user.id
	end

	def current_user?(user)
	    user == current_user
	  end

<<<<<<< HEAD
	 def current_user
    	@current_user ||= User.find_by(id: session[:user_id])
  	 end
=======
	def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def current_lesson
  	@current_lesson ||= Lesson.find_by(id: session[:lesson_id])
  end

  def current_lesson?(lesson)
  	lesson == current_lesson
  end
>>>>>>> dfd94126c342c4da3d507c2fde2d00e62ff4a7b5

	def logged_in?
		!current_user.nil?
	end

	def log_out
		session.delete(:user_id)
		@current_user = nil
	end
end
