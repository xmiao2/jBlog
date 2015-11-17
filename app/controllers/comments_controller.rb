class CommentsController < ApplicationController

	def create
		@post = Post.find(post_id_params)
		@comment = @post.comments.create(comment_params)

		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(post_id_params)
		@comment = @post.comments.find(params[:id])
		@comment.destroy

		redirect_to post_path(@post)
	end

	private
		def post_id_params
			return params.require(:post_id)
		end

		def comment_params
			return params.require(:comment).permit(:name, :body)
		end

end
