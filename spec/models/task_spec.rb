require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Task, "When created" do
  it "should create a new instance given valid attributes" do
    task = Factory.build(:task, :name => "new task")
    task.name.should == "new task"
  end
  
  it "should have status set to active by default" do
    task = Factory.build(:task)
    task.status.name.should == "Active"
  end
  
  it "should be able to find_by_status" do
    task = Factory.build(:task)
    active_task = Task.find_by_status(1)

    active_task.should_not be_nil
  end
  
  it "should show point total for last 7 days" do
    old_task = Factory(:task, :points => 10, :created_at => 10.days.ago)
    task1 = Factory(:task, :points => 5)
    task2 = Factory(:task, :points => 4)
    
    point_sum = Task.calculate_velocity
    
    point_sum.should == 9
  end
  
  it "point total should not include active tasks" do
    
  end
end
