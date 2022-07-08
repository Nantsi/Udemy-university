class SessionsController < ApplicationController
  
  skip_before_action :require_user, only: [:new, :create]
  
  def new
  end
  
  def create
    student = Student.find_by(email: params[:logins][:email].downcase)
    if student && student.authenticate(params[:logins][:password])
      session[:student_id] = student.id
      redirect_to student
    else
      render 'new'
    end
  end
  
  def destroy
    session[:student_id] = nil
    redirect_to root_path
  end

  
  
end