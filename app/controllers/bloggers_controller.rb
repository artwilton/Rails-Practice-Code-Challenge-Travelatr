class BloggersController < ApplicationController

    before_action :find_blogger, only: [:show, :edit, :update, :destroy]

    def index
        @bloggers = Blogger.all
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def find_blogger
        @blogger = Blogger.find(params[:id])
    end

end
