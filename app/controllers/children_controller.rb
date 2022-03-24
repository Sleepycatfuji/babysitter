class ChildrenController < ApplicationController
  def index
    @children = Child.all # uninitialized constant
  end

  def create
    @child = Child.find(params[:id])
    if @child.save
      redirect_to child_path(@child)
    else
      render :new
    end
  end

  def new
    @child = Child.new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def children_params
    params.require(:child).permit(:name, :age, :notes)
  end
end
