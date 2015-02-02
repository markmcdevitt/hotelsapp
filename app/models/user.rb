class User < ActiveRecord::Base
	has_many :payments, :dependent => :destroy
	
	has_secure_password
	validates_uniqueness_of:email
	validates_uniqueness_of:name
end


