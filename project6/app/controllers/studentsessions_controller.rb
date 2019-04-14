class StudentsessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by(username: params[:studentsession][:username].downcase)
    if student && student.authenticate(params[:studentsession][:password])
         #login student and redirect to student's show page
         student_log_in student
         redirect_to student
    else
         flash.now[:danger] = 'Invalid username/password combination'
         render 'new'
    end
  end

  def destroy
    student_log_out
    redirect_to root_url
  end

end
