class ParentsController < ApplicationController
  def index
    @parents = Parent.all
  end

  def create
    @parent = Parent.find(params[:id])
    if @parent.save
      redirect_to parent_path(@parent)
    else
      render :new
    end
  end

  def new
    @parent = Parent.new
  end

  def show
    @parent = Parent.find(params[:id])
  end

  def edit
    @parent = Parent.find(params[:id])
  end

  def update
    @parent = Parent.find(params[:id])
    if @parent.update(parent_params)
      redirect_to parent_path(@parent)
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def parent_params
    params.require(:parent).permit(:name, :address, :phone_number)
  end
end
