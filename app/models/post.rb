class Post < ActiveRecord::Base

  validates_presence_of :title, :body
  has_many :comments

  def self.latest_five
    order(created_at: :desc).limit(5)
  end
end
