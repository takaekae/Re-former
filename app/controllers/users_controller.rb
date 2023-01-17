class UsersController < ApplicationController

  include ActionView::RecordIdentifier
  before_action :find_all_users
  before_action :find_user, except: [:new, :create, :index]



  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "user created"
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "user updated"
      redirect_to new_user_path

    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
    flash[:notice] = "user removed"
    redirect_to new_user_path
  end

  private

    def user_params
      params.require(:user).permit!
    end

    def find_all_users
      @users = User.all
    end

    def find_user
      @user = User.find(params.require(:id))
    end
end
