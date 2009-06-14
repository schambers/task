require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe TasksController do

  it "should respond to index action" do
    get :index
    assigns[:tasks].should_not be_nil
    
  end

  it "should respond to the new action" do
    @task = mock_model(Task)
    Task.should_receive(:new).and_return(@task)

    get :new
    assigns[:task].should eql(@task)
  end
  
  it "should create a task from the create action" do
    @task = mock_model(Task)
    Task.should_receive(:create).and_return(@task)

    get :create
    assigns[:task].should_not be_nil
  end

end
