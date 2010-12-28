class BearsController < ApplicationController
  def index
    @bears = Bear.all
  end

  def show
    @bear = Bear.find(params[:id])
  end

end
