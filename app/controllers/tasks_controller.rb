class TasksController < ApplicationController
  def index
    @tasks = Task.find(:all)
  end
  
  def new
    @task = Task.new
  end

  def create
    @task = Task.create(params[:task])
  end
end
