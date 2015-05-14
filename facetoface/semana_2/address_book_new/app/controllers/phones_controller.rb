class PhonesController < ApplicationController
	def index
		@contact = Contact.find params[:contact_id]
		@phones = @contact.phones
	end
end
