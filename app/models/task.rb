class Task < ActiveRecord::Base
  belongs_to :status

  validates_presence_of :name, :points
  
  named_scope :find_by_status, lambda { |status_id| {:conditions => ["status_id = ?", status_id]} }
end
