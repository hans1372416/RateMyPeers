module StudentsessionsHelper

  def student_log_in(student)
    session[:student_id] = student.id
  end

  def current_student
    if session[:student_id]
      @current_student ||= Student.find_by(id: session[:student_id])
    end
  end
  #returns true if student is logged in, false otherwise
  def studentlogged_in?
    !current_student.nil?
  end

  def student_log_out
    session.delete(:student_id)
    @current_student = nil
  end

end
