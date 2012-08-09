class GameweeksController < ApplicationController
  def index
    @gameweeks = Gameweek.all
  end

  def show
    @gameweek = Gameweek.find(params[:id])
  end

  def new
    @gameweek = Gameweek.create
	10.times do
	  @fixture = @gameweek.fixtures.build
	end
  end

  def create
    @gameweek = Gameweek.new(params[:gameweek])
    if @gameweek.save
      redirect_to @gameweek, :notice => "Successfully created gameweek."
    else
      render :action => 'new'
    end
  end

  def edit
    @gameweek = Gameweek.find(params[:id])
  end

  def update
    @gameweek = Gameweek.find(params[:id])
    if @gameweek.update_attributes(params[:gameweek])
      redirect_to @gameweek, :notice  => "Successfully updated gameweek."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @gameweek = Gameweek.find(params[:id])
    @gameweek.destroy
    redirect_to gameweeks_url, :notice => "Successfully destroyed gameweek."
  end
end
