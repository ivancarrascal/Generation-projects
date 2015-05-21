class BooksController < ApplicationController
	def index
		@books = Book.last_added_books
	end

	def show
		@book = Book.find params[:id]
	end
end
