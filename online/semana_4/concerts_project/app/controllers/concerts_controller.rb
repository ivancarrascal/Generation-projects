class ConcertsController < ApplicationController
	def index
		@concerts = Concert.all
	end

	def show
		@concerts = Concert.find(params[:id])
	end

	def new
		@concert = Concert.new
	end

	def create
		@concert = Concert.new(concert_params)

		@concerts = Concert.all
		if @concert.save
			redirect_to concerts_path
		else
			render action: 'new'
		end
	end

	def destroy
		@concert = Concert.find(params[:id])
		@concert.destroy
		redirect_to concerts_path
	end

	def like
		@concert = Concert.find(params[:id])
		@concert.update_attribute(:totalLikes, @concert.totalLikes + 1)
		redirect_to concert_path(@concert)
	end

	def popularConcerts
		@concerts = Concert.order(totalLikes: :desc)
	end

	def allConcerts
		@concerts = Concert.all
	end

	private
	def concert_params
		params.require(:concert).permit(:bandName, :venue, :city, :date, :price, :description)
	end
end