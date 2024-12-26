class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @projects_tasks = @project.tasks

  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.created_by_id = current_user.id
    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render :new, notice: "Project is not created"
    end
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :status, :start_date, :end_date)
    end
end
