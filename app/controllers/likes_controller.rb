class LikesController < ApplicationController
  def create
    @course = Course.new
    @like = Like.new(like_params)
    @like.user = current_user
    @like.course = @course

    if @like.save
      redirect_to courses_path, status: :see_other, notice: "Cours bien ajouté au favoris"
    else
      render "courses/show", status: :unprocessable_entity, course: @course
    end
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :course_id)
  end

end
