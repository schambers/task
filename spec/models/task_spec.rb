require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Task, "When created" do
  it "should create a new instance given valid attributes" do
    task = Factory.build(:task, :name => "new task")
    task.name.should == "new task"
  end
  
  it "should have status set to active by default" do
    task = Factory.build(:task)
    task.status.id.should == 1
    task.status.status.should == "Active"
  end
end
