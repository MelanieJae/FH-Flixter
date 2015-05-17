class Instructor::ImagesController < ApplicationController
	before_action :authenticate_user!

	def create
		@image = current_course.images.create(image_params)
		redirect_to instructor_course_path(@current_course)
	end

	private

	helper_method :current_course
	def current_course
		@current_course ||= Course.find(params[:course_id])
	end

	def image_params
		params.require(:image).permit(:caption)
	end
end
