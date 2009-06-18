class TasksController < ApplicationController
  def index
    done_status = Status.find(:first, :conditions => ["status = 'Active'"])
    @tasks = Task.find(:all, :conditions => ["status_id = ?", done_status.id])
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
  
  def done
    Task.find(params[:id].to_i)
    redirect_to :action => "index"
  end
end
