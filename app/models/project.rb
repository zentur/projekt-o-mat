class Project < ActiveRecord::Base
  attr_accessible :description, :name, :semester_id
end
