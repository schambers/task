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

end

describe Task, "When working with an invalid Task" do
  
  before(:each) do
    @task = Task.new
  end
  
  it "should not be valid" do
    @task.should_not be_valid
  end
  
  it "should validate name" do
    @task = Task.new
    @task.should_not be_valid
    @task.errors.on(:name).should == "can't be blank"
  end
  
  it "should validate points" do
    @task.should_not be_valid
    @task.errors.on(:points).should == "can't be blank"
  end
  
end
