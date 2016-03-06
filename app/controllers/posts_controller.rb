class PostsController < ApplicationController
  def index
    @posts = Post.all.order({date: :desc, id: :desc})
  end

  def new
  end

  def create
    post_params = params['post'].permit('title', 'content')
    Post.create(post_params)
    redirect_to(posts_path)
  end

  def edit
    @post = Post.find(params['id'])
  end

  def update
    post_params = params['post'].permit('title', 'content')
    post = Post.find(params['id'])
    post.update(post_params)
    redirect_to(posts_path)
  end

  def destroy
    post = Post.find(params['id'])
    post.destroy
    redirect_to(posts_path)
  end
end
