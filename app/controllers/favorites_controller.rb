class FavoritesController < ApplicationController
	def create
		# binding.pry
		@user = User.find(current_user)
		@station = Station.find(params[:id])
		
		@user.stations << @station
		if @user.save
			render json: @station, status: :created
			# redirect_to stations_path
		else
			render status: 501
		end
	end

	def destroy
		@user = User.find(current_user)
		@station = Station.find(params[:id])
		@user.stations.destroy(@station)
		puts "\n\n\n\n\n", @user.stations(@station)
		# render nothing: true
		if @user.save
			render json: @station
		else
			render status: 501
		end
	end


end
