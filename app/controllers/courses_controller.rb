class CoursesController < ApplicationController

  def index
    @courses = Course.all
    if params[:query].present?
      sql_subquery = "title ILIKE :query OR summarize ILIKE :query"
      @courses = @courses.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end


  def create
  end
end
