class UserEventsController < ApplicationController
  def create
    def create
      @event = Event.find(params[:event_id])
      @user_event = User_event.new
      @user_event.user = current_user
      @user_event.event = @event
      if @user_event.save
        redirect_to events_path, status: :see_other, notice: "Cet évènement a bien ajouté à votre agenda !"
      else
        render "events/show", status: :unprocessable_entity, event: @event
      end
    end
  end
end
