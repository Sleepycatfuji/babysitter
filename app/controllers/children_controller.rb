class ChildrenController < ApplicationController
  has_many :bookings, dependent: :destroy
  has_one :parent

  def index
  end

  def create
  end

  def new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end