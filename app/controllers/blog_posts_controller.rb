class BlogPostsController < ApplicationController
  def create
    blog_post = BlogPost.new(blog_post_params)


    if blog_post.save
      render json: blog_post, status: :created
    else
      # render errors
    end
  end

  private

  def blog_post_params
    params.require(:blog_post).
      permit(:title, :body, :author_name)
  end
end
