class EventsController < ApplicationController

  # require 'open-uri'

  before_action :set_event, only: [:show, :edit, :update, :destroy]
  LOGOS = {
    "drinking" => "fas fa-beer",
    "sports" => "fas fa-futbol",
    "cinema" => "fas fa-film",
    "games" => "fas fa-chess-king",
    "online" => "fas fa-laptop",
    "outdoors" => "fas fa-walking"
}

  def index
    @events = Event.all
    @location = "London"
    @location = params["data"]["location"] if params["data"]["location"].present?
    @events = @events.where('date BETWEEN ? AND ?', params["data"]["date"].split(" to ")[0] + " 00:00:00", params["data"]["date"].split(" to ")[1]  + " 23:59:59") if params["data"]["date"].present?
    @events = @events.where("location ILIKE ?", "%#{params["data"]["location"]}%") if params["data"]["location"].present?
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    # raise
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
    params.require(:event).permit(:date, :location, :description, :category, :group_size)
  end

  def set_event
    if params[:id] == "index"
      redirect_to root_path
    else
      @event = Event.find(params[:id])
    end
  end


  # def get_location(address)
  #   url = "https://maps.googleapis.com/maps/api/geocode/json?#{address}";
  #   doc = open(url).read
  #   doc = JSON.parse(doc)
  #   latitude = doc[:data][:results][0][:geometry][:location][:lat]
  #   longitude = doc[:data][:results][0][:geometry][:location][:lng]
  #   { latitude: latitude, longitude: longitude }
  # end
end

