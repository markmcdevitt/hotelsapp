class Room < ActiveRecord::Base
	belongs_to :hotel
	has_many :bookings, :dependent => :destroy
	
	#before_filter :authorise, :except =>[:edit, :create, :destroy]
	#before_filter :authorise, :only => :show
	
	def self.search(search)
		search_condition =search +"%"
		find(:all, :conditions => ['category LIKE ?', search_condition])
	end	
end
