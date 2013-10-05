class Comment < ActiveRecord::Base
  belongs_to :post
  attr_accessible :commenter_name, :message, :post_id
  
  #Validates go below
  validates :commenter_name, presence: true,
                              length: { in: 3..100 },
                              uniqueness: true

  validates :message, presence: true,
                      length: { in: 3..300 }

  validates :post, presence: { message: "does not exist"}
end
