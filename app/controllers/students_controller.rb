class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def new
  end

  def create
    @student_first_name = params[:student][:first_name]
  end

  private 

  def set_student
    @student = Student.find(params[:id])
  end

end
