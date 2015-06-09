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
        @password.each_byte do |c|
            puts c
        end
        @encrypted = encrypted_password
        return encrypted_password
    end
    def decrypt_password
        decrypted_password = ""
        for i in 0..@encrypted.length - 1
            decrypted_password << @encrypted[i].ord + 3
        end
        return decrypted_password
    end
end

my_twi = Account.new "Ivan", "guebah", "twitter.com"
puts my_twi.view_data
puts my_twi.encrypt_password
puts my_twi.decrypt_password 