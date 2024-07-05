class UsersController < ApplicationController
  def index
    @users = User.all    
  end

  def create
    @user = User.new(user_params)
  
    if @user.save
      redirect_to users_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def new
    @user = User.new
  end

  def filter
    campaign_names = params[:campaign_names].split(',')
    @users = User.where("JSON_CONTAINS(campaigns_list, ?)", campaign_names.map { |name| { campaign_name: name }.to_json })
    render :index
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :campaigns_list)
  end
end
