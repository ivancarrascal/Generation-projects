class Account
	def initialize user, password, website
		@user = user
		@password = password
		@website = website
	end
	def view_data
		puts "User: #{@user}, Password: #{@password}, Website: #{@website}"
	end
	def encrypt_password
		encrypted_password = ""
		for i in 0..@password.length - 1
			if @password[i].ord < 120
			encrypted_password << @password[i].ord + 3
			elsif @password[i].ord >= 120
			encrypted_password << @password[i].ord - 23
			end
		end
		@encrypted = encrypted_password
		return encrypted_password
	end
	def decrypt_password
		decrypted_password = ""
		for i in 0..@encrypted.length - 1
			if @encrypted[i].ord >= 100
			decrypted_password << @encrypted[i].ord - 3
			elsif @encrypted[i].ord < 99
			decrypted_password << @encrypted[i].ord + 23
			end
		end
		@decrypted = decrypted_password
		return decrypted_password
	end
end

# Todo en la clase Account_manager es provisional
class Account_manager < Account
	def insecure_password
		if @password.length < 5
			@password != password
	end
	def add_accounts
		@user.new
		@password.new
		@website.new
	end
	def show_crypted_accounts
		if password = @decrypted
			puts "User: #{@user}, Password: #{@password}, Website: #{@website}"
		end
	end
	def show_insecure_accounts
		puts "The total of insecure accounts are #{}"
end

my_twi = Account.new "Ivan", "guebah", "twitter.com"
my_face = Account.new "max_power", "asdf", "www.facebook.com"
limit_account = Account.new "Border", "abcdevwxyz", "forocoches"
puts my_twi.view_data
puts my_twi.encrypt_password
puts my_twi.decrypt_password
puts my_face.view_data
puts my_face.encrypt_password
puts my_face.decrypt_password
puts limit_account.view_data
puts limit_account.encrypt_password
puts limit_account.decrypt_password
