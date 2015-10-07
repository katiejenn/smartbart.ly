class LinesController < ApplicationController
  def index
  	@all_lines = Line.all
  end

  def show
  	
  end
end
