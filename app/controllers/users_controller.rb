class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  STATUSES = {
    "pending" => "far fa-clock",
    "accepted" => "fas fa-check",
    "rejected" => "fas fa-times"
  }

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    if @user == current_user
      @user.notifications = false
      @user.save
    end
  end

  def edit
  end

  def update
    photo = @user.user_photo
    @user.update(user_params)
    if @user.user_photo.nil?
      user.user_photo = photo
    end
    redirect_to user_path(@user)
  end

  def badge
    @user = User.find(params[:id])
    respond_to do |format|
      format.js  { render "users/badge" } # <-- will render `app/views/users/badge.js.erb`
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :encrypted_password, :user_bio, :user_photo, :group_bio, :group_photo)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
