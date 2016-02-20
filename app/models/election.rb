class Election < ActiveRecord::Base
  attr_accessible :contact, :description, :title
  validates :title, :presence => true
  validates :contact, :presence => true
  belongs_to :users
end
