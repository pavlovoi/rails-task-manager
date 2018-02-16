class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
    @task = Task.new(params[:id])
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to task_path(task)
  end

  def edit

  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  # def mark_task
  #   if @task.completed?

  # end

  private

  def task_params
     params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
     @task = Task.find(params[:id])
  end

end


# As a user, I can list tasks
# As a user, I can view the details of a task
# As a user, I can add a new task
# As a user, I can edit a task (mark as completed / update title & details)
# As a user, I can remove a task
