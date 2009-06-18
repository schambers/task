class Task < ActiveRecord::Base
  belongs_to :status

  validates_presence_of :name, :points
end
