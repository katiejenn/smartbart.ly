class LinesController < ApplicationController
  def index
  	@all_lines = Line.all
  end

  def show
  	@line = Line.friendly.find(params[:id])
  end
end
