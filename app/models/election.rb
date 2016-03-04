class Election < ActiveRecord::Base
require 'date'
#  attr_accessible :contact, :description, :title

  validate :validate_start_not_in_past
  #validate :validate_start_not_in_past, on :update
  validates :title, :presence => true
  validates :contact, :presence => true
  validates :start, :presence => true
  validates :finish, :presence => true

  belongs_to :users

  alias_attribute :owner_id, :user_id

  validates_format_of :contact, :with => /@/


  private
    def validate_start_not_in_past
      if start.present? && start<Date.today
	errors.add(:election, "Start cannot be in the past")
      end
    end

end
