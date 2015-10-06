class TipsController < ApplicationController

	def create
		@tip = Tip.new(tip_params)
		if @tip.save
			redirect_to "/stations/#{params[:tip][:station_id]}"
		else
			render :new
		end
	end

	private

  	def tip_params
    	params.require(:tip).permit(:description, :user_id, :station_id)
  	end


end
