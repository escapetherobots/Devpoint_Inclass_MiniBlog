class Author < ActiveRecord::Base
  has_many :posts

  # hey there is an author whose id = our author id
  attr_accessible :bio, :email, :first_name, :last_name, :twitter, :username
  
  #Validations go here#
  # presence
  validates :first_name, :last_name, :username, presence: true
  # uniqueness
  validates :twitter, :username, uniqueness: true, allow_blank: true
  # length
  validates :bio, length: { in: 3..500 }, allow_blank: true
  # email

  validates :email, presence: true,
                    format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},
                    uniqueness: true

  def full_name
    (first_name + ' ' + last_name).titleize
  end
            
  def twitter_link
    "http://www.twitter.com/#{twitter}"
  end




end
