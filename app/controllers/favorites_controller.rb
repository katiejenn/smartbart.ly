class FavoritesController < ApplicationController
	def create
		# binding.pry
		@user = User.find(current_user)
		@station = Station.find(params[:id])
		
		@user.stations << @station
		if @user.save
			render json: @user, status: :created
			# redirect_to stations_path
		else
			render status: :bad_request
		end
	end

	def destroy
		@user = User.find(current_user)
		@station = Station.find(params[:id])
		@user.stations.destroy(@station)
		# render nothing: true
		if @user.save
			render status: :ok
		else
			render :status :bad_request
		end
	end


end
