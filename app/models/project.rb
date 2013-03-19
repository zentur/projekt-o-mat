class Project < ActiveRecord::Base
  attr_accessible :description, :name, :semester_id, :professor, :max_members

  has_many :projekt_participants
  belongs_to :semester
  has_many :users, through: :projekt_participants
end
