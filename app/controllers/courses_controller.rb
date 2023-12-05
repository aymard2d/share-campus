class CoursesController < ApplicationController

  def index
    @course = Course.new
    @courses = Course.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR summarize ILIKE :query"
      @courses = @courses.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    if @course.save
      redirect_to courses_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def course_params
    params.require(:course).permit(:title, :summarize, :category, :date, document: [])
  end
end
