class Task < ActiveRecord::Base
  belongs_to :status

  validates_presence_of :name, :points
  
  named_scope :find_by_status, lambda { |status_id| {:conditions => ["status_id = ?", status_id]} } 
  
  def self.calculate_velocity
    done_status = Status.get_done_status
    Task.sum :points, :conditions => ["created_at > ? AND status_id = ?", 7.days.ago, done_status.id]
  end
end
