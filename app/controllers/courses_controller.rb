class CoursesController < ApplicationController

  def index
    @course = Course.new
    @last_course = Course.last
    @courses = Course.all.order("created_at DESC")
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR summarize ILIKE :query"
      @courses = @courses.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    respond_to do |format|
      if @course.save
        format.html { redirect_to courses_path}
        format.text { render partial: "courses/list", locals: {course: @course}, formats: [:html] }
      else
        render "courses/add_course_form", status: :unprocessable_entity
      end
    end
  end

  private

  def course_params
    params.require(:course).permit(:title, :summarize, :category, :date, :document, :user_id)
  end
end
