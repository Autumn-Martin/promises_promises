class PromisesController < ApplicationController
  before_action :set_promise, only: [:edit, :update]

  def index
    @promises = Promise.all
  end

  def new
    @promise = Promise.new
  end

  def create
    @promise = Promise.create(promise_params)
    if @promise.save
      redirect_to promises_path
    else
      flash.now.alert = 'Something went wrong.
        Please make sure you are completing all fields.'
      render :new
    end
  end

  def edit
  end

  def update
    @promise.update(promise_params)
    redirect_to promises_path
  end

  private
  def promise_params
    params.require(:promise).permit(:maker_name, :content, :status)
  end

  def set_promise
    @promise = Promise.find(params[:id])
  end
end
