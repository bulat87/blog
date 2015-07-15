class Post < ActiveRecord::Base
  acts_as_taggable
  belongs_to :user
  has_many :comments

  validates :title, length: { maximum: 100 }, presence: true
  validates :content, :user_id, presence: true
end
