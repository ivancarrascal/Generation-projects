class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
	end

	def show
		begin
			@project = Project.find params[:id]
		rescue ActiveRecord::RecordNotFound
			render 'no_projects_found', layout: 'admin'
		end
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new project_params
		if @project.save
			redirect_to @project
		else
			render 'new'
		end
	end

	private
	def project_params
		params.require(:project).permit(:name, :description)
	end
end
