class Status < ActiveRecord::Base
  named_scope :find_active_status, :conditions => ["name = 'Active'"]
end
