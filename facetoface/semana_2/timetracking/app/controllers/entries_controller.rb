class EntriesController < ApplicationController
	def index
		@project = Project.find params[:project_id]
		@entries = @project.entries
	end
	def new
		@project = Project.find params[:project_id]
		@entry = @project.entries.new
	end
	def create
		@project = Project.find params[:project_id]
		@entry = @project.entries.new entry_params
		if @entry.save
			flash[:notice] = "Entry created successfully"
			redirect_to project_entries_path(@project)
		else
			flash[:alert] = "Entry hasn't been created successfully"
			render 'new'
		end
	end

	def edit
		@project = Project.find params[:project_id]
		@entry = @project.entries.find params[:id]
	end
	def update
		@entry = Entry.find(params[:id])

		if @entry.update_attributes entry_params
			flash[:notice] = "Entry updated successfully"
			redirect_to action: 'index'
		else
			flash.now[:errors] = @entry.errors.full_messages
			render 'edit'
		end
	end

	def destroy
		@project = Project.find params[:project_id]
		@entry = @project.entries.find params[:id]
		@entry.destroy
		redirect_to projects_path
	end

	private
	def entry_params
		params.require(:entry).permit(:hours, :minutes, :comments, :date)
	end
end
