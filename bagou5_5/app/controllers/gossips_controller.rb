class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user: User.all.sample)
    if @gossip.save
      redirect_to({ :action=>'index' }, :alert => "success")
    else 
      render :new
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.title = params[:title]
    @gossip.content = params[:content]
    if @gossip.save
      redirect_to({ :action=>'index' }, :alert => "success")
    else 
      render :edit
    end
  end

  def destroy
    Gossip.find(params[:id]).destroy
    redirect_to({ :action=>'index' }, :alert => "destroy")
  end
end
