class EventsController < ApplicationController
  def index
    @event = Event.new
    @lasts_event = Event.last(3)
    @events = Event.all.order("created_at DESC")
    return unless params[:query].present?

    sql_subquery = "title ILIKE :query OR description ILIKE :query OR starting_date :query"
    @events = @events.where(sql_subquery, query: "%#{params[:query]}%")
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    respond_to do |format|
      if @event.save
        format.html { redirect_to events_path }
        format.text { render partial: "events/list", locals: { event: @event }, formats: [:html] }
      else
        render :index, status: :unprocessable_entity
      end
    end
  end

  def update
  end

  def delete
  end

  private

  def event_params
    params.require(:event).permit(:category, :title, :description, :created_by, :starting_date, :strating_time, :ending_date, :ending_time, :user_id, :user_event)
  end
end
