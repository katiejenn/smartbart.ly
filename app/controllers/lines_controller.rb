class LinesController < ApplicationController
  def index
  	@allLines = Line.all
  end

  def show
  	@line = Line.friendly.find(params[:id])
  	@lineTimes = BartApi.schedule("routesched", {route: @line.number})

  	@tip = Tip.new
    @tips = Tip.where(line_id: @line.number).order(:created_at).reverse
  end
end
