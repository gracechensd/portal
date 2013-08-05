class ProjectsController < ApplicationController
  before_action :signed_in_user, only: [:newproject, :create, :destroy]
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
    flash[:success] = "Project deleted"
    redirect_to(:back)
  end

  private

    def project_params
      params.require(:project).permit(:name, :b_index, :schedule, :ret_per, :status)
    end

    # Before filters

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @project = current_user.projects.find_by(id: params[:id])
      redirect_to root_url if @project.nil?
    end
end
