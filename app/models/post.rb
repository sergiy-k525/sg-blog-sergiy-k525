require "./app/uploaders/image_uploader"

class Post < ActiveRecord::Base
  has_many :comments

  validates_presence_of :title, :body

  mount_uploader :image, ImageUploader

  def self.latest_five
    order(created_at: :desc).limit(5)
  end
end
