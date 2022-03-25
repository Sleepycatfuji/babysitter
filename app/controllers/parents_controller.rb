class ParentsController < ApplicationController
  def index
    @parents = Parent.all
    @babysitters = Babysitter.all
  end

  def create
    @child = Child.find(params[:child_id])
    @parent = Parent.new(parent_params)
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
    @child = Child.new
  end

  def edit
    @parent = Parent.find(params[:id])
    @child = Child.find(params[:id])
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
    @parent = Parent.find(params[:id])
    @parent.destroy
    redirect_to parents_path
  end

  private

  def parent_params
    params.require(:parent).permit(:name, :address, :phone_number)
  end
end
