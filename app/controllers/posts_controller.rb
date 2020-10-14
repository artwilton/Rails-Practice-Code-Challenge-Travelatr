class PostsController < ApplicationController

    before_action :find_post, only: [:show, :edit, :update, :destroy]

    def index
        @posts = Post.all
    end

    def show
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.create(post_params)

        redirect_to post_path
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def find_post
        @post = Post.find(params[:id])
    end

    def post_params
        #args
        params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
    end

end
