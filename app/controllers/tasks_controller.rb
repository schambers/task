class TasksController < ApplicationController
  def index
    @tasks = Task.find(:all)
  end
  
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    
    if !@task.save
      
      render :action => "new"
    end
    
  end
end
