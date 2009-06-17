require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require 'mocha'

describe TasksController, "When creating a valid Task" do
  before(:each) do
    @task = mock_model(Task)
  end

  it "should respond to index action" do
    Task.expects(:find).with(:all).returns(mock())
    
    get :index
    assigns[:tasks].should_not be_nil
  end

  it "should respond to the new action" do
    Task.should_receive(:new).and_return(@task)

    get :new
    assigns[:task].should eql(@task)
  end
  
  it "should create a task from the create action" do
    Task.any_instance.stubs(:save).returns(true)

    post :create
    assigns[:task].should_not be_nil
  end
end

describe TasksController, "When marking a task as done" do
  before :each do
    @params = {:id => 1}
  end

  it "should respond to done action" do
    Task.any_instance.stubs(:save).returns(true)
    Task.expects(:find).with(1).returns(mock())
    
    get :done, :id => 1
    response.should be_redirect
    response.should redirect_to(root_path)
  end

  it "should set task status to done" do
    Task.any_instance.stubs(:save).returns(true)
    Task.expects(:find).with(1).returns(mock())
    
    get :done, :id => 1
  end
end

describe TasksController, "When creating an invalid Task" do
  it "should redirect to new on validation errors" do
    Task.any_instance.stubs(:save).returns(false)

    post :create
    response.should render_template(:new)
  end
end

