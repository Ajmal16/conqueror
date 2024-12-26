class TasksController < ApplicationController
  def index
    @task = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end


  def new
    @task = Task.new
    @project = Project.find(params[:project_id])
  end

  def create
    @task = Task.new(task_params)
    @project = Project.find(params[:project_id])
    @user = current_user
    @task.user = @user
    @task.project = @project

    if @task.save
      redirect_to project_tasks_path(@project), notice: 'Task was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to project_path(@task.project), notice: 'Task deleted.'
  end

  private


  def task_params
    params.require(:task).permit(:name, :description, :status, :priority, :user_id)
  end
end
