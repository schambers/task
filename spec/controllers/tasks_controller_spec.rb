require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'mocha'

describe TasksController, "When getting a full list of Tasks" do
  before(:each) do
    @task = mock()
  end

  it "should respond to index action" do
    status = mock()
    status.stubs(:id).returns(1)
    Status.expects(:find).with(:first, {:conditions => ["name = 'Active'"]}).returns(status)
    Status.expects(:find).with(:first, {:conditions => ["name = 'Done'"]}).returns(status)
    Task.expects(:find_by_status).with(status.id).returns(@task)
    
    get :index
    
    assigns[:tasks].should_not be_nil
    assigns[:velocity].should_not be_nil
  end
end

describe TasksController, "When creating a valid Task" do
  before(:each) do
    @task = mock()
  end

  it "should not show done tasks on index" do
    status = mock()
    status.stubs(:id).returns(1)
    Status.expects(:find).with(:first, :conditions => ["name = 'Active'"]).returns(status)
    Status.expects(:find).with(:first, {:conditions => ["name = 'Done'"]}).returns(status)
    Task.expects(:find_by_status).with(status.id).returns(mock)
    
    get :index

    assigns[:tasks].should_not be_nil
  end
  
  it "should respond to the new action" do
    Task.stubs(:new).returns(@task)
    
    get :new
    
    assigns[:task].should eql(@task)
  end
  
  it "should create a task from the create action" do
    Task.stubs(:new).returns(@task)
    @task.expects(:save).returns(true)
    
    post :create
    
    assigns[:task].should eql(@task)
  end
end

describe TasksController, "When marking a task as done" do
  before :each do
    Task.stubs(:save).returns(true)
    @params = {:id => 1}

    @task = mock()
    @status = mock()
    
    Status.expects(:find).with(:first, :conditions => ["name = 'Done'"]).returns(@status)
    Task.expects(:find).with(1).returns(@task)
    @task.expects(:status=).with(@status)
    @task.expects(:save).returns(true)
  end

  it "should set task status to done" do
    get :done, :id => 1
    
    response.should be_redirect
    response.should redirect_to(root_path)
  end
end

describe TasksController, "When creating an invalid Task" do
  it "should redirect to new on validation errors" do
    task = mock()
    Task.stubs(:new).returns(task)
    task.expects(:save).returns(false)

    post :create
    response.should render_template(:new)
  end
end

