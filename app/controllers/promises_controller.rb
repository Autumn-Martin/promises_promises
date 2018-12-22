class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end


  def new
    @promise = Promise.new
  end
end
