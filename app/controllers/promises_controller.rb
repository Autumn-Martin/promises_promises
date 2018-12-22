class PromisesController < ApplicationController
  def index
    @promises = Promise.all
  end


  def new
    @promises = Promise.new
  end
end
