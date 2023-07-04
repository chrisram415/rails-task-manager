class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # raise
  end

  # task GET    /tasks/:id(.:format)                   tasks#show
  def show
    # raise
    @task = Task.find(params[:id])
  end

  # new_task GET    /tasks/new(.:format)                   tasks#new
  def new
    @task = Task.new # Needed to instantiate the form_with
  end

  # POST   /tasks(.:format)                       tasks#create
  def create
    @task = Task.new(task_params)
    @task.save
    # sends us to the show
    # task GET    /tasks/:id(.:format)                   tasks#show
    redirect_to task_path(@task)
  end
end

private

def task_params
  params.require(:task).permit(:title, :details)
end
