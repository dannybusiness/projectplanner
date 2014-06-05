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

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update!(project_params)
      redirect_to @project, notice: 'Project was successfully created.'
    end
  end

  def create
  	@project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @project }
      else
        format.html { render action: 'new' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def project_params
  	params.require(:project).permit(:name, :planning_start_date, :planning_end_date, :implementation_start_date, :implementation_end_date)
  end
end
