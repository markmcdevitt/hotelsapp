class Room < ActiveRecord::Base
	belongs_to :hotel
	has_many :bookings, :dependent => :destroy
	
	
end
