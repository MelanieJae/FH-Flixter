class LessonsController < ApplicationController

	def new
	end
	
	def show
		@lesson = Lesson.find(params[:id])
	end

	private

	
end
