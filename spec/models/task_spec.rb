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
end
