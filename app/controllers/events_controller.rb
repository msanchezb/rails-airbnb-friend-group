class EventsController < ApplicationController

  # require 'open-uri'

  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    #for the moment listing them all
    @events = Event.all
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
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
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
  end

  private

  def event_params
    params.require(:event).permit(:date, :location, :description, :category, :group_size, :latitude, :longitude)
  end

  def set_event
    @event = Event.find(params[:id])
  end


  # def get_location(address)
  #   url = "https://maps.googleapis.com/maps/api/geocode/json?#{adress}";
  #   doc = open(url).read
  #   doc = JSON.parse(doc)
  #   latitude = doc[:data][:results][0][:geometry][:location][:lat]
  #   longitude = doc[:data][:results][0][:geometry][:location][:lng]
  #   { latitude: latitude, longitude: longitude }
  # end
end

