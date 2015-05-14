class ContactsController < ApplicationController
	def home
		@contacts = Contact.all
	end
	def index
		@contact = Contact.find params[]
	end
end
