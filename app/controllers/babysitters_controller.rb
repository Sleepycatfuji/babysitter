class BabysittersController < ApplicationController
  def index
    @babysitters = Babysitter.all
  end

  def create
    @babysitter = Babysitter.new(babysitter_params)
    if @babysitter.save
      redirect_to babysitter_path(@babysitter)
    else
      render :new
    end
  end

  def new
    @babysitter = Babysitter.new # for form
  end

  def show
    @babysitter = Babysitter.find(params[:id])
  end

  def edit
    @babysitter = Babysitter.find(params[:id])
  end

  def update
    @babysitter = Babysitter.find(params[:id])
    if @babysitter.update(babysitter_params)
      redirect_to babysitter_path(@babysitter)
    else
      render :edit
    end
  end

  def destroy
    @babysitter = Babysitter.find(params[:id])
    @babysitter.destroy
    redirect_to babysitters_path
  end

  private

  def babysitter_params
    params.require(:babysitter).permit(:name, :price)
  end
end
