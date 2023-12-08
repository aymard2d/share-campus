class LikesController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @like = Like.new
    @like.user = current_user
    @like.course = @course

    if @like.save
      redirect_to courses_path, status: :see_other, notice: "Cours bien ajouté au favoris"
    else
      render "courses/show", status: :unprocessable_entity, course: @course
    end
  end
end
