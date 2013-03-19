class Semester < ActiveRecord::Base
  attr_accessible :sommer, :winter, :year, :active

  has_many :users
  has_many :projects
end
