class PostsController < ApplicationController
	def index
		@post = Post.where(user_id: params[:id])
	end
	
	def new
		@post = Post.new
	end

	def create
		@post = Post.create(params[:post])
	end


end
