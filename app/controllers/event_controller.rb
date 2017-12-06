class EventController < ApplicationController

  def new
    @calevent = CalEvent.new
  end

  def create
    @calevent = CalEvent.new(event_params)
    @calevent.userid= current_user.id if current_user
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
end