class FavoritesController < ApplicationController
	def create
		# binding.pry
		@user = User.find(current_user)
		@station = Station.find(params[:id])
		
		@user.stations << @station
		if @user.save
			redirect_to stations_path
		else
			render :message
		end
	end

	def destroy
	end


end
