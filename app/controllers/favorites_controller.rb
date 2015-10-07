class FavoritesController < ApplicationController
	def create
		@user = User.find(current_user)
		@station = Station.find(params[:id])
		
		@user.stations << @station
		if @user.save
			render json: @station, status: :created
		else
			render status: 501
		end
	end

	def destroy
		@user = User.find(current_user)
		@station = Station.find(params[:id])

		@user.stations.destroy(@station)
		if @user.save
			render json: @station
		else
			render status: 501
		end
	end


end
