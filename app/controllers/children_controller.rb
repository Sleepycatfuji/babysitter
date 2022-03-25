class ChildrenController < ApplicationController
  def index
    @children = Child.all
  end

  def create
    @parent = Parent.new(@parent)
    @child = Child.new(children_params)
    @child.parent = @parent
    if @child.save
      redirect_to parent_path
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
