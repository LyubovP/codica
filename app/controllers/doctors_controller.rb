class DoctorsController < ApplicationController
	before_action :authenticate_doctor!, only:[:show]
	before_action :authenticate_user!, only:[:index]
	before_action :set_doctor, only:[:show]

	def show; end

	def index
		@doctors = Doctor.all
	end

	private

	def set_doctor
		@doctor = Doctor.find(params[:id])
	end
end
