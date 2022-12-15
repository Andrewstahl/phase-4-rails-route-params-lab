class StudentsController < ApplicationController

  def index
    # byebug
    if params[:name] != nil
      students = Student.where("first_name like ?", params[:name]).or(Student.where("last_name like ?", params[:name]))
    else
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
