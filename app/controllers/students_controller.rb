class StudentsController < ApplicationController
  def index
   
  end
  
  def new
    @student = Student.new
  end  
  
  def create
    @student = Student.new student_params
    
    if @student.save
      flash[:notice] = "Student Successfully Created."
      
      redirect_to @student
    else
      render "new"
    end
  end
  
  def show
    @student = Student.find params[:id]
  end
  
  def edit
    @student = Student.find params[:id]
  end
  
  def update
    @student = Student.find params[:id]
    if @student.update_attributes student_params
      flash[:notice] = "Student Successfully Updated."
      redirect_to @student
    else
      render "edit"
    end
  end
  
  def destroy
    @student = Student.find params[:id]
    
    if @student.destroy
      flash[:notice] = "Student Successfully Destroyed."
      redirect_to students_path
    else
      render @student
    end
  end
  
  private
  
  def student_params
    params.require(:student).permit(:name)
  end
end