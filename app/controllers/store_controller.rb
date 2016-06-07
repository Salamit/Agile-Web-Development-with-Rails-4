class StoreController < ApplicationController

	include SessionCounter
	before_action :increment_counter, only: [:index]

	def index
		@count = increment_counter
		@products = Product.order(:title)

		@counter_above_five = "You have been here #{@count} times" if session[:counter] > 5


	end

end

