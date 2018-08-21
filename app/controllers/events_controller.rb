class EventsController < ApplicationController

  require 'open-uri'

  def index

  end

  def new
    @event = Event.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:date, :location, :description, :)

  end

  def set_event
    @event =
  end


  def get_location(address)
    url = "https://maps.googleapis.com/maps/api/geocode/json?#{adress}";
    doc = open(url).read
    doc = JSON.parse(doc)
    latitude = doc[:data][:results][0][:geometry][:location][:lat]
  end
end

create_table "events", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "date"
    t.string "location"
    t.text "description"
    t.boolean "confirmed", default: false
    t.text "review_of_host"
    t.text "review_of_guest"
    t.string "category"
    t.integer "group_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

