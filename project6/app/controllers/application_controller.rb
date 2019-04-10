class ApplicationController < ActionController::Base

   protect_from_forgery with: :exception
   include StudentsessionsHelper
   include InstructorsessionsHelper

	def index 

	end



end
