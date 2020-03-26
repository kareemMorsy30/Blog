class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end

    def create
        @post = Post.find(params[:id])
        @post.comments.create(content: params[:content])

        render "posts/show"
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy

        redirect_to "/posts/#{@comment.post.id}"
    end
end
