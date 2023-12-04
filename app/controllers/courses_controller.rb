class CoursesController < ApplicationController
  def index
  end

  def new
    @course = Course.new
  end

  def create
  end
end
