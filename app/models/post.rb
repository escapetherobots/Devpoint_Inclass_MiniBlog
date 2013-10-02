class Post < ActiveRecord::Base
  belongs_to :author
  # hey these posts now belong to an author!

  attr_accessible :body, :published_at, :title, :author_id
end
