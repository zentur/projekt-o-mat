class ProjectsController < ApplicationController
	def index
		@projects = Project.where("semester_id = 1")
  end

  def add_user
  	@project = Project.find(params[:project_id])
  	@user = User.find(params[:user_id])
  	@prio = params[:project_prio]

  	if @prio.to_i == 1
  		@user.projekt_participants.create(:user_id => @user.id, :project_id => @project.id, :prio1 => true, :prio2 => false, :prio3 => false, :hate => false)
  	elsif @prio.to_i == 2
  		@user.projekt_participants.create(:user_id => @user.id, :project_id => @project.id, :prio1 => false, :prio2 => true, :prio3 => false, :hate => false)
  	elsif @prio.to_i == 3
  		@user.projekt_participants.create(:user_id => @user.id, :project_id => @project.id, :prio1 => false, :prio2 => false, :prio3 => true, :hate => false)
  	elsif @prio.to_i == 4
  		@user.projekt_participants.create(:user_id => @user.id, :project_id => @project.id, :prio1 => false, :prio2 => false, :prio3 => true, :hate => false)
  	end

  	redirect_to(project_path(@project))
  end

  def show
  	@project = Project.find(params[:id])

  	if Project.find(params[:id]).users.where("projekt_participants.user_id = ?", current_user.id).present?
  	  @alreadyVoted = true
  	else
  		@alreadyVoted = false
  	end

  	@participantUsersPrio1 = Project.find(params[:id]).users.where("projekt_participants.prio1= ? ", :true)
  	@participantUsersPrio2 = Project.find(params[:id]).users.where("projekt_participants.prio2= ? ", :true)
  	@participantUsersPrio3 = Project.find(params[:id]).users.where("projekt_participants.prio3= ? ", :true)
  	@participantUsersHate = Project.find(params[:id]).users.where("projekt_participants.hate= ? ", :true)

  end
end