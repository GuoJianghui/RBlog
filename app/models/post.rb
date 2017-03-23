class Post < ActiveRecord::Base

  BOOK = 'book'
  POST = 'post'

  scope :home, -> { limit('6').order('created_at DESC') }
  scope :book, -> { where post_type: BOOK }
  scope :post, -> { where post_type: POST }

  self.per_page = 8
  acts_as_taggable

  extend FriendlyId
  friendly_id :title, use: :slugged

  def should_generate_new_friendly_id?
    title_changed?
  end

  def normalize_friendly_id(input)
    input.to_s.to_slug.normalize.to_s
  end
end
