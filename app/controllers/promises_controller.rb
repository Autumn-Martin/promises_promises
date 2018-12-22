class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end

  def new
    @promise = Promise.new
  end

  def create
    @promise = Promise.create(promise_params)
    redirect_to promises_path
  end

  private
  def promise_params
    params.require(:promise).permit(:maker_name, :content)
  end
end
