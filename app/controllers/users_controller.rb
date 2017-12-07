class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Cloud Calendar!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @eventsfiltered = CalEvent.all
    @eventlist = []
    @title = []
    @desc = []
    @start = []
    @end = []
    for x in @eventsfiltered do
      if x.userid==@user.id
        @title.push( x.title)
        @desc.push(x.description)
        @start.push(x.start)
        @end.push(x.end)
      end

    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
