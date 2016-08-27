class EventsController < ApplicationController
  def solicit
  end

  private

  def event_params
    params.require(:event).permit(:title, :meetup_url)
  end
end
