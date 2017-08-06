class StocksController < ApplicationController
  def by_publisher
    @stock = Stock.search_by_publisher(params[:name])
    respond_to do |format|
      format.html { render json: @stock }
      format.json { render json: @stock }
    end
  end
  
  def by_book
    @stock = Stock.search_by_book(params[:name])
    respond_to do |format|
      format.html { render json: @stock }
      format.json { render json: @stock }
    end
  end
end
