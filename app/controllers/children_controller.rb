class ChildrenController < ApplicationController
  raise
  has_one :parent
  has_many :bookings

  def index
    @child = Children.all # uninitialized constant
  end

  def create
    @child = Children.find(params[:id])
    if @child.save
      redirect_to child_path(@child)
    else
      render :new
    end
  end

  def new
    @child = Children.new
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
