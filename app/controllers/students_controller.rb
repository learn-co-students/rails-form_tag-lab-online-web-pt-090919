class StudentsController < ApplicationController
  before_action :set_student, only: :show
  def index
    @students = Student.all
  end
  
  def new
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def create
    session[:form_param] = params.inspect
    redirect_to students_path
  end
  
  private
  
  def set_student
    @student = Student.find(params[:id])
  end

end
