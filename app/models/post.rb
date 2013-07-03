class Post < ActiveRecord::Base
  validates_presence_of :body, :title, :author

  attr_accessible :body, :title, :author
end
