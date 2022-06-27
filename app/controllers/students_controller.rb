class StudentsController < ApplicationController

  def index
    if(params[:name])
      students = Student.where("first_name =? or last_name =?",params[:name].capitalize , params[:name].capitalize).all
      return render json: students
    end
    students = Student.all
    render json: students
  end
  def show
    student = Student.find(params[:id])
    render json: student
  end
end
