class UsersController < ApplicationController

	def new
		@user = User.new
		render :new
	end

	def create
		user_params = params.require(:user).permit(:first_name, :last_name, :email, :email_confirmation, :password, :password_confirmation)
		@user = User.new(user_params)
		if @user.save
			login(@user)
			#NOTE: `<prefix>_path` syntax prefered
			redirect_to "/users/#{@user.id}"
		else
			render :new
		end
	end

	def show
		#NOTE: You can also use `User.find(params[:id])`. Consider making a before action if you find this needing to happen more than once, here or in other controllers.
		@user = User.find_by({id: params[:id]})
	end

	# def show_stations
	# 	@user = User.find_by({id: params[:id]})
	# end
end
