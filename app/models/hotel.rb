class Hotel < ActiveRecord::Base
	has_many :rooms, :dependent => :destroy
	
	mount_uploader :image, ImageUploader
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?

end
