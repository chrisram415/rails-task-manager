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

  # edit_task GET    /tasks/:id/edit(.:format)              tasks#edit
  def edit
    @task = Task.find(params[:id])
  end

  # PATCH  /tasks/:id(.:format)                   tasks#update
  # once we click on update on the edit page we need to trigger this method
  def update
    # raise
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  # DELETE /tasks/:id(.:format)                   tasks#destroy
  def destroy
    # find the id of the instance w/ params id (we found this by using raise)
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end
end

#  we use link_to helper to connect pages
# Add _path to the route prefix (left column)
# start w/ pe tags then link_to "text" or instance info we want as the text, pathway
# example:
#  <li><%= link_to restaurant.name, restaurant_path(restaurant) %></li>
# <%= link_to(title, path) %>

private

def task_params
  params.require(:task).permit(:title, :details)
end
