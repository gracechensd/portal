class ProjectsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def new
    	@project = Project.new(:schedule => "1", :ret_per => "1", :status => "1")
  end

  def newproject
    @project = current_user.projects.build if signed_in?
  end

  def create
    @project = current_user.projects.build(project_params)
    if @project.save
      flash[:success] = "Project created!"
      redirect_to root_url
    else
      render 'newproject'
    end
  end

  def show
    render projects_path
  end

  def destroy
    @project.destroy
    redirect_to root_url
  end

  private

    def project_params
      params.require(:project).permit(:name)
    end

    def correct_user
      @project = current_user.projects.find_by(id: params[:id])
      redirect_to root_url if @project.nil?
    end
end
