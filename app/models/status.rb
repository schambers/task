class Status < ActiveRecord::Base
  def self.get_active_status
    self.find(:first, :conditions => ["name = 'Active'"])
  end
  
  def self.get_done_status
    find(:first, :conditions => ["name = 'Done'"])
  end
end
