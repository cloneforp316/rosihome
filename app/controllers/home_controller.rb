class HomeController < ApplicationController
  def index

  end

  def posts
    post = Post.new(permit_params)
    post.save

    head :ok
  end

  def results
    @posts = Post.all
  end

  def permit_params
    params.permit(:name, :phone, :message)
  end
end
