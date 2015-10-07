class LinesController < ApplicationController
  def index
  	@all_lines = Line.all
  end

  def show
  	@tip = Tip.new
    @tips = Tip.where(line_id: params[:id]).order(:created_at).reverse

  	@line = Line.friendly.find(params[:id])
  end
end
