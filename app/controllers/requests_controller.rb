class RequestsController < ApplicationController

  before_action :set_request, only: :destroy

  def create
    @request.new(request_params)
    @request.user = current_user
    @request.event = Event.find(params[:event_id])
    if @request.save
      redirect_to user_path(current_user)
    else
      render "events/#{params[:event_id]}"
    end
  end

  def destroy
    @request.destroy
  end

  private

  def request_params
    params.require(:request).permit(:message)
  end

  def set_request
    @request = Request.find(params[:id])
  end

end
