class CoursesController < ApplicationController
  def index
    @course = Course.new
    @review = Review.new(course: @course)
    @courses = Course.all.order("created_at DESC")
    @last_course = @courses[-1]
    return unless params[:query].present?

    sql_subquery = "title ILIKE :query OR summarize ILIKE :query"
    @courses = @courses.where(sql_subquery, query: "%#{params[:query]}%")
  end
  
  def create
    @course = Course.new(course_params)
    @course.user = current_user
    respond_to do |format|
      if @course.save
        format.html { redirect_to courses_path }
        format.text { render partial: "courses/list", locals: { course: @course }, formats: [:html] }
      else
        render :index, status: :unprocessable_entity
      end
    end
  end
  
  def show
    @course = Course.find(params[:id])
    @review = Review.new(course: @course)
    respond_to do |format|
      format.html { redirect_to courses_path}
      format.text { render partial: "courses/visualisation_card", locals: {course: @course, review: @review}, formats: [:html] }
    end 
  end
  
  private

  def course_params
    params.require(:course).permit(:title, :summarize, :category, :date, :document, :user_id, :like, :review)
  end
end
