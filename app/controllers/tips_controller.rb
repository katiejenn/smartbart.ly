class TipsController < ApplicationController

	def create
		@tip = Tip.new(tip_params)
		if @tip.save
			if @tip.station_id != nil
				# redirect_to "/stations/#{params[:tip][:station_id]}"
				redirect_to station_path(Station.friendly.find(@tip.station_id).slug)
			elsif @tip.line_id != nil
				redirect_to line_path(Line.friendly.find(@tip.line_id).slug)
			end
		else
			render :new
		end
	end

	private

  	def tip_params
    	params.require(:tip).permit(:description, :user_id, :station_id, :line_id)
  	end


end
