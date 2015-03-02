class SearchContoller < ApplicationController
  def index
	@rooms = Room.order("title asc").all
  end
  
		def search 
		@rooms= Room.search params[:q]
		unless @rooms.empty?
			render 'index'
		else
			flash[:notice] = 'Nothing matches that search'
			render'index'
		end
	end	
end