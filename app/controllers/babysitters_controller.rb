class BabysittersController < ApplicationController
  def index
    @babysitters = Babysitter.all
  end

  def create
  end

  def new
  end

  def show
    @babysitter = Babysitter.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
