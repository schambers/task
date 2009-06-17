class Task < ActiveRecord::Base
  validates_presence_of :name, :points
  
  def status
    read_attribute(:status) or :active
  end
end
