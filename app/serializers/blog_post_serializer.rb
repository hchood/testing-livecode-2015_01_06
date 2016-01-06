class BlogPostSerializer < ActiveModel::Serializer
  attributes :title, :body, :author_name
end
