class DashboardController < ApplicationController
	def index
		@projects = User.find(current_user).projects.where("projekt_participants.hate != ?", true)
		@hates = User.find(current_user).projects.where("projekt_participants.hate = ?", true)
	end
end
