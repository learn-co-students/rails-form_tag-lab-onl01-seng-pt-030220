class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
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
