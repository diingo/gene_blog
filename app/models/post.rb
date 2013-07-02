class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true

  attr_accessible :body, :title
end
