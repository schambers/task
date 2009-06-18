class Task < ActiveRecord::Base
  validates_presence_of :name, :points
end
