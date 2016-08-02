class StudentsController < ApplicationController

  def index
    render :json => Student.all
  end

  def show
    render :json => Student.find(params[:id])
  end

  def create
    puts params
    student = {f_name: params[:f_name],l_name: params[:l_name], age: params[:age].to_i, email: params[:email], slack: params[:slack]}
    Student.create student
    render :json => Student.last
  end

  def edit
    render :json => Student.find(params[:id])
  end

  def update
    student = {f_name: params[:f_name],l_name: params[:l_name], age: params[:age].to_i, email: params[:email], slack: params[:slack]}
    Student.find(params[:id]).update student
    render :json => student
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    render :json => true
  end

end
