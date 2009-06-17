require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Task, "When created" do
  before(:each) do
    @valid_attributes = {
      :name => "Test name",
      :points => 5
    }
  end

  it "should create a new instance given valid attributes" do
    @task = Task.new(@valid_attributes)
    @task.save!
  end
  
  it "should return proper status if set to done" do
    task = Task.new(:status => :done, :name => "test name", :points => 1)
    task.status.should == :done
  end
  
  it "should have status set to active by default" do
    task = Task.new
    task.status.should == :active
  end
end
