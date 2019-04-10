module InstructorsessionsHelper

  def log_in(instructor)
    session[:instructor_id] = instructor.id
  end

  def current_instructor
    if session[:instructor_id]
      @current_instructor ||= Instructor.find_by(id: session[:instructor_id])
    end
  end

  def logged_in?
    !current_student.nil?
  end

end
