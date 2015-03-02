class Admin < ActiveRecord::Base
	has_many :hotels, :dependent => :destroy
	
	has_secure_password
	validates_uniqueness_of:name
	validates_confirmation_of :password
end
