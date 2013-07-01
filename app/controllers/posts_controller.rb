class PostsController < ApplicationController
  def index
    @name = "Gene"
    @posts = Post.all
  end
end