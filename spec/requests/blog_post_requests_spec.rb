require 'rails_helper'

describe 'BlogPostsController endpoints' do
  # blog post should have an author name and a body
  describe 'POST /blog_posts' do
    context 'with valid parameters' do
      it 'returns JSON for the blog post' do
        # build the attributes I need to send in the request body
        # make my post request
        # expectations

        # {
        #   blog_post: {
        #     title: '...',
        #     body: '...',
        #     author_name: '...'
        #   }
        # }

        blog_post_attrs = attributes_for(:blog_post)

        post(blog_posts_url, blog_post_attrs.to_json, accept_headers)

        expect(response).to have_http_status :created
        expect(body).to have_json_path 'blog_post'
        expect(body).to have_json_path 'blog_post/title'
        expect(body).to have_json_path 'blog_post/body'
        expect(body).to have_json_path 'blog_post/author_name'
      end
    end

    context 'with invalid parameters' do
      context 'such a missing title' do
        it 'should return errors'
      end

      context 'with a title that already exists' do
        it 'should return errors'
      end
    end
    # context 'with authenticated user' do
    #
    # end
    #
    # context 'unauthenticated user' do
    #   it 'returns 401 - Unauthorized response'
    # end
  end
end
