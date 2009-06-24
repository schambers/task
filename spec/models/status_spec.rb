require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Status do
  before(:each) do
    @active = Factory.create(:status, :name => 'Active')
    @done = Factory.create(:status, :name => 'Done')
  end

  it "should be able to find active status" do
    Status.get_active_status.name.should == 'Active'
  end
  
  it "should be able to get done status" do
    Status.get_done_status.name.should == 'Done'
  end
end
