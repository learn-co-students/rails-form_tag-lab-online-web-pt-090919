class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

  # it 'creates a record in the database' do
  #   visit new_student_path

  #   fill_in 'first_name', with: "Sansa"
  #   fill_in 'last_name', with: "Stark"

  #   click_on "Submit Student"

  #   expect(Student.last.first_name).to eq("Sansa")
  # end

end
