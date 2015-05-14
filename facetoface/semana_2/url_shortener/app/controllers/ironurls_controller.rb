class IronurlsController < ApplicationController
	def index
		@url = Ironurl.all
	end
	def redirect_url
		begin
		@urlto = Ironurl.find params[:id]
		@urlto.visits += 1
		@urlto.save
		redirect_to @urlto.url
		rescue ActiveRecord::RecordNotFound
		render 'url_not_found'
		end
	end
end
