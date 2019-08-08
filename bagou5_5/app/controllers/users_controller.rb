class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id]) 
  end

  def new
    @user = User.new
  end

  def create
      user = User.new(first_name: params[:first_name], last_name: params[:last_name], age: params[:age], email: params[:email], description: params[:description], password: params[:password])
    if user.save
      redirect_to({ :action=>'index' }, :alert => "success")
    else 
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
