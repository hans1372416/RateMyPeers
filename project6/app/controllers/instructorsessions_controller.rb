class InstructorsessionsController < ApplicationController
  def new
  end

  def create
    instructor = Instructor.find_by(username: params[:instructorsession][:username].downcase)
    if instructor && instructor.authenticate(params[:instructorsession][:password])
         #login instructor and redirect to instructor's show page
         instructor_log_in instructor
         redirect_to instructor
    else
         flash.now[:danger] = 'Invalid username/password combination'
         render 'new'
    end
  end

  def destroy
    instructor_log_out
    redirect_to root_url
  end


end
