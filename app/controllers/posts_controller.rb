class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def index
        @posts = Post.order(created_at: :desc)
    end

    def edit
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save

        if @post.save
            redirect_to :root
        else
            render :new
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.title = params[:post][:title]
        @post.content = params[:post][:content]
        @post.save

        if @post.save
            redirect_to :root
        else
            render :edit
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to :root
    end
end
