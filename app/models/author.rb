class Author < ActiveRecord::Base
  has_many :posts
  # hey there is an author whose id = our author id
  attr_accessible :bio, :email, :first_name, :last_name, :twitter, :username


end
