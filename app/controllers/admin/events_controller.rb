module Admin
  class EventsController < AdminController
    def new
      @event = Event.new
    end

    def create
      @event = Event.new(event_params)

      if @event.save
        flash[:notice] = 'Event was successfully created.'
        redirect_to [:admin, @event]
      else
        render :new
      end
    end

    def show
      @event = Event.find(params[:id])
    end

    private

    def event_params
      params.require(:event).permit(:title, :meetup_url)
    end
  end
end
