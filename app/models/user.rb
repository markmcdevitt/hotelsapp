class User < ActiveRecord::Base
	has_many :payments, :dependent => :destroy
	
	
	has_secure_password
	validates_uniqueness_of:email
	validates_uniqueness_of:name
	
	def self.setRegular(user)		
	      unless user.nil?	
			if user.microposts.count >= 3
				user.regular = true		
				user.save
			end
		    
		end

	end

end