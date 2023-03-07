class PostsController < ApplicationController

    before_action :authenticate_member!, except: [:index]

    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.member_id = current_member.id
        if @post.save
            redirect_to posts_path, notice: "post successfully created"
        else
            flash.now[:failure] = "somethign went wrong. post not created"
            render :new, status: :unprocessable_entity
        end
    end

    private

    def post_params
        params.require(:post).permit(:title, :text, :member_id)
    end

end