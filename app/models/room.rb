class Room < ActiveRecord::Base
	belongs_to :hotel
	belongs_to :booking
	
	
end
