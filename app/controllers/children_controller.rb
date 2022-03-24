class ChildrenController < ApplicationController
  def index
    @children = Child.all # uninitialized constant
  end

  def create
    @child = Child.new(children_params)
    raise
    if @child.save
      redirect_to children_path
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
