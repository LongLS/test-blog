class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit(:email, :name, :content))
        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end

    def edit
        @post = Post.find(params[:post_id])
    end

    def update
        @post = Post.find(params[:post_id])
        if @post.update(post_params)
            redirect_to @post
    end

end
