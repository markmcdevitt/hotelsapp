class Booking < ActiveRecord::Base
	has_many :rooms, dependent => :destroy
	belongs_to :payment
end
