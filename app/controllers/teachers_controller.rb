class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end
  
  def new
    @student = Student.new
  end  
end