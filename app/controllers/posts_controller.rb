class PostsController < ApplicationController
	def index
		@posts = Post.all.order("created_at DESC")
	end

	def new
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])

		if @post.body.nil? || @post.body.blank?
			@post.body = "No content"
		end
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post
		else
			render :new
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	private
		def post_params
			params.require(:post).permit(:title, :body)
		end
end
