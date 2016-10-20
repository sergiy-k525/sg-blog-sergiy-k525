class Comment < ActiveRecord::Base
  belongs_to :post


  validates :body,  :presence => true,
                    :length => {:minimum => 2}

end
