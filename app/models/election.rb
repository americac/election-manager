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

  def is_pending?
    DateTime.now.to_i < start.to_i
  end

  def is_running?
    DateTime.now.to_i > start.to_i && DateTime.now.to_i < finish.to_i
  end

  def is_finished?
    DateTime.now.to_i > finish.to_i
  end

  def status
    return "Finished" if is_finished?
    return "Running" if is_running?
    return "Pending" if is_pending?
  end

  private
    def validate_start_not_before_finish
      self.errors.add(:start, "cannot be after finish") if start.to_i > finish.to_i
    end

    def validate_start_not_in_past
      self.errors.add(:start, "cannot be in the past") if start.present? && start.past?
    end
end
