class Room < ActiveRecord::Base
	belongs_to :hotels
	belongs_to :booking
	
	
end
