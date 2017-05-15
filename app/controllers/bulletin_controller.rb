class BulletinController < ApplicationController
    def index
        @posts = Post.all
    end

    def show
        post_id = params[:id]
        @post = Post.find(post_id)
        @comments = @post.comments
    end

    def destroy
        post_id = params[:id]
        Post.find(post_id.destroy)
        redirect_to ""
    end
end
