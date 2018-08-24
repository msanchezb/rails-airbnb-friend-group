class EventsController < ApplicationController

  # require 'open-uri'

  before_action :set_event, only: [:show, :edit, :update, :destroy]
  LOGOS = {
    "Drinking" => "fas fa-beer",
    "Sports" => "fas fa-futbol",
    "Cinema" => "fas fa-film",
    "Games" => "fas fa-chess-king",
    "Online" => "fas fa-laptop",
    "Outdoors" => "fas fa-walking"
}

  def index
    @events = Event.all.reject { |event| event.user == current_user }
    @events = @events.reject { |event| event.requests.select { |request| request.user == current_user}.any? }
    @location = "London"
    if params["data"].present?
      @location = params["data"]["location"] if params["data"]["location"].present?
      @events = Event.near(@location, 3) if params["data"]["location"].present?
      @events = @events.where('date BETWEEN ? AND ?', params["data"]["date"].split(" to ")[0] + " 00:00:00", params["data"]["date"].split(" to ")[1]  + " 23:59:59") if params["data"]["date"].present?
    end
    @markers = @events.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    # @event.group_photo = current_user.group_photo if params[:event][:group_photo].nil?
    if @event.save
      # current_user.group_photo = @event.group_photo
      # current_user.group_bio = @event.group_bio
      # raise
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def show
    @marker = {
        lat: @event.latitude,
        lng: @event.longitude
      }
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :location, :description, :category, :group_size, :group_bio, :group_photo)
  end

  def set_event
    if params[:id] == "index"
      redirect_to root_path
    else
      @event = Event.find(params[:id])
    end
  end
end
