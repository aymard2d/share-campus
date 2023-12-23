class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @course = Course.find(params[:course_id])
    @review.course = @course
    if @review.save
      redirect_to courses_path
    else
      @bookmark = Bookmark.new
      render 'courses/show', status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to course_path(@review.course)
  end

  private

  def review_params
    params.require(:review).permit(:rating)
  end
end
