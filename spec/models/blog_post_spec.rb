require 'rails_helper'

RSpec.describe BlogPost, type: :model do
  describe 'validations' do
    let!(:blog_post) { create(:blog_post) }

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:author_name) }
    it { should validate_uniqueness_of(:title) }
  end

  describe 'associations' do
    xit { should have_many(:comments) }
  end
end
