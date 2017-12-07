class EventController < ApplicationController

  def new
    @calevent = CalEvent.new
  end

  def create
    @calevent = CalEvent.new(event_params)
    @calevent.userid= current_user.id if current_user
    write_json
    if @calevent.save
      flash[:success] = "Event Created!"
      redirect_to current_user
    else
      render 'new'
    end
  end

  private

  def event_params
    params.require(:calevent).permit(:title, :description, :start, :end)
  end

  def write_json
    events_json = []
    CalEvent.all.each do |event|
      event_json = {
          "id" => event.id,
          "start" => event.start,
          "end" => event.end,
          "title" => event.title,
          "description" => event.description,
      }
      events_json << event_json
    end
    File.open("public/event.json","w") do |f|
      f.write(events_json.to_json)
    end
  end
end