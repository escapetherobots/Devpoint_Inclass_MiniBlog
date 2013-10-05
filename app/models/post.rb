class Post < ActiveRecord::Base
  belongs_to :author
  has_many :comments

  # hey these posts now belong to an author!

  attr_accessible :body, :published_at, :title, :author_id

  #validators go below:


  validates :body, length: { in: 5..300, message: "too short!!!!!!" },
                    presence: true

  validates :title, presence: true

  validates :author, presence: {message: "is missing. Put it in NOW!!!"}

end


