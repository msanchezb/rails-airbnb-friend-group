class RequestsController < ApplicationController

  before_action :set_request, only: :destroy

  def create
    @request = Request.new(request_params)
    @request.user = current_user
    @request.event = Event.find(params[:event_id])
    if @request.save
      @request.event.user.notifications = true
      @request.event.user.save
      redirect_to user_path(current_user)
    else
      render "events/#{params[:event_id]}"
    end
  end

  def destroy
    @request.destroy
    @user = @request.user
    reload
    # redirect_to user_path(current_user)
  end

  def accept_request
    @request = Request.find(params[:id])
    @request.status = "accepted"
    @request.save
    @request.user.notifications = true
    @request.user.save
    @user = @request.event.user
    reload
    # render "users/show"
  end

  def reject_request
    @request = Request.find(params[:id])
    @request.status = "rejected"
    @request.save
    @request.user.notifications = true
    @request.user.save
    @user = @request.event.user
    reload
    # render "users/show"
  end

  def reload
    @user = User.find(params[:id]) if @user.nil?
    respond_to do |format|
      format.html { redirect_to user_path(@user) }
      format.js  { render "requests/reload" } # <-- will render `app/views/requests/reload.js.erb`
    end
  end

  private

  def request_params
    params.require(:request).permit(:message)
  end

  def set_request
    @request = Request.find(params[:id])
  end

end
