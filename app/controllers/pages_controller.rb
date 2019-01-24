class PagesController < ApplicationController

	def index
		@hotels = Hotel.limit(5)
	end

	def hotel_list
	  @q = Hotel.ransack(params[:q])
	  @hotels = @q.result(distinct: true).includes(:facilities)
	  @facilities = Facility.all
	end

	def your_reservations
	end

end