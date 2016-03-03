class User < ActiveRecord::Base
#  attr_accessible :contact, :description, :title
  has_many :elections
end
