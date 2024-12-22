class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render :new, alert: 'There was an issue in creating the project.'
    end
  end

  private
  
    def project_params
      params.require(:project).permit(:name, :description, :status, :start_date, :end_date, :created_by_id)
    end
end
