class StudentsessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by(username: params[:studentsession][:username].downcase)
    if student && student.authenticate(params[:studentsession][:password])
         #login student and redirect to student's show page
         log_in student
         redirect_to student
    else
         # still in the works
         # flash.now[:danger] = 'Invalid username/password combination'
         render 'new'
    end
  end

  def destroy
  end

end
