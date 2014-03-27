class PostsController < ApplicationController
	def index
		@posts = Post.where(user_id: params[:user_id])
	end
	
	def new
		@post = Post.new
	end	

	def create
	#	@post = Post.new(params[:post])
	#	if @post.save
	#		 flash[:notice] = "Your post was created successfully."
	#		 redirect_to root_path
	#		 else
	#		 flash[:alert] = "There was a problem saving your post."
	#		 redirect_to root_path
	#	end	 
	end


end
