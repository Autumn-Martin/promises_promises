class PromisesController < ApplicationController
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

  private
  def promise_params
    params.require(:promise).permit(:maker_name, :content)
  end
end
