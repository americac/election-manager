class Election < ActiveRecord::Base
    validates :title, :presence => true
    validates :contact, :presence => true
    belongs_to :users
end
