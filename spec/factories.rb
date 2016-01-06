FactoryGirl.define do
  factory :blog_post do
    sequence(:title) { |n| "My Title #{n}" }
    body 'my awesome post is so awesome'
    author_name 'Gene Parmesan'
  end
end
