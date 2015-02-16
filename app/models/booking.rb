class Booking < ActiveRecord::Base
	belongs_to :room
	belongs_to :payment
end
