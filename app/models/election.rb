class Election < ActiveRecord::Base
  require 'date'
#  attr_accessible :contact, :description, :title

  validate :validate_start_not_in_past
  validate :validate_start_not_before_finish
  validates :title, :presence => true
  validates :contact, :presence => true
  validates :start, :presence => true
  validates :finish, :presence => true

  belongs_to :users

  alias_attribute :owner_id, :user_id

  validates_format_of :contact, :with => /@/


  private
    def validate_start_not_before_finish
      self.errors.add(:start, "cannot be after finish") if start.to_i > finish.to_i
    end

    def validate_start_not_in_past
      self.errors.add(:start, "cannot be in the past") if start.present? && start.past?
    end
end
