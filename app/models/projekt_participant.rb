class ProjektParticipant < ActiveRecord::Base
  attr_accessible :user_id, :project_id, :prio1, :prio2, :prio3, :hate

  belongs_to :user
  belongs_to :project
end