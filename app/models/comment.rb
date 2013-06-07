class Comment < ActiveRecord::Base
  attr_accessible :body, :name
  belongs_to :forum

  default_scope order("create_at desc")

  validates_presence_of :name
  validates_presence_of :body
end
