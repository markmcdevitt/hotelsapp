class Payment < ActiveRecord::Base
	belongs_to :booking
	belongs_to :user
end
