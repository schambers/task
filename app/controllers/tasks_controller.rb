class TasksController < ApplicationController
  def index
    active_status = Status.find(:first, :conditions => ["name = 'Active'"])
    @tasks = Task.find_by_status(active_status.id)
    @velocity = Task.calculate_velocity
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
    done_status = Status.find(:first, :conditions => ["name = 'Done'"])
    task = Task.find(params[:id].to_i)
    task.status = done_status
    
    task.save
    redirect_to :action => "index"
  end
end
