class UsersController < ApplicationController
	def index
		@users = User.all 
	end
	
	def show
	 	@user = User.find(params[:id])	
	end

	def destroy
		@user = User.find(params[:id]).destroy
	end
	
	def new
	 	@user = User.new
    end
	 
	def create
	 	@user = User.create(params[:user])
	 	if @user.save
			 flash[:notice] = "Your account was created successfully."
			 redirect_to root_path
			 else
			 flash[:alert] = "There was a problem saving your account."
			 redirect_to new_user_path
		end	 
	end	

	def edit
		@user = User.find(params[:id])	
			
			 
	end	

	def update
		@user = User.find(params[:id])
		@user = User.where(id: params[:id]).first
		
	 	if @user &&  @user.update(params[:user])
			 flash[:notice] = "Your account was edited successfully."
			 redirect_to root_path
			 else
			 flash[:alert] = "There was a problem editing your account."
			 redirect_to new_user_path
		end	 
	end	



		






end
