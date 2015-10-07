class TipsController < ApplicationController

	def create
		@tip = Tip.new(tip_params)
		if @tip.save
			if @tip.station_id != nil
				redirect_to "/stations/#{params[:tip][:station_id]}"
			elsif @tip.line_id != nil
				redirect_to "/lines/#{params[:tip][:line_id]}"
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
