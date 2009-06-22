require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Status do
  it "should be able to find active status" do
    #active_status = Factory(:status, :name => 'Active')
    #done_status = Factory(:status, :name => 'Done')
    
    Status.find_active_status.name == 'Active'
  end
end
