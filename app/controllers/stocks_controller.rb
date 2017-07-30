class StocksController < ApplicationController
  def publisher
    @stock = params[:name].nil? ? "" : Stock.publisher(params[:name])
    respond_to do |format|
      format.html { render json: @stock }
      format.json { render json: @stock }
    end
  end
  
  def books
    @stock = params[:name].nil? ? "" : Stock.by_name(params[:name])
    respond_to do |format|
      format.html { render json: @stock }
      format.json { render json: @stock }
    end
  end
end
