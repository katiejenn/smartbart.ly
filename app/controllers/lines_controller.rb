class LinesController < ApplicationController
  def index
  	@all_lines = Line.all
  end

  def show
  	@line = Line.friendly.find(params[:id])

  	@tip = Tip.new
    @tips = Tip.where(line_id: @line.id).order(:created_at).reverse
  end
end
