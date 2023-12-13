class AmphisController < ApplicationController
  def index
    @amphis = Amphi.all
  end

  def show
    @amphi = Amphi.find(params[:id])
  end
end
