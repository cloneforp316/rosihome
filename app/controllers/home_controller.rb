class HomeController < ApplicationController
  def index

  end

  def posts
    post = Post.new(permit_params)
    if post.save

    end
  end

  def permit_params
    params.permit(:name, :phone, :message)
  end
end
