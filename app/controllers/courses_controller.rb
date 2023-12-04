class CoursesController < ApplicationController
  def index
    @courses = Course.all
    @course = Course.new
    @user = current_user
  end

  def create
    @course = Course.new(course_params)
    @user = current_user
    @course.user_id = current_user
    if @course.save
      redirect_to courses_path, notice: "Cours enregistré"
    else
      render "courses/index", status: :unprocessable_entity
    end
  end


  private

  def course_params
    params.require(:course).permit(:title, :summarize, :category, :date, :user_id)
  end
end
