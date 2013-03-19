class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  after_create :add_semester

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :semester_id
  # attr_accessible :title, :body

  has_one :semester

  has_many :projekt_participants
  has_many :projects, through: :projekt_participants

  def add_semester
    @active_semester = Semester.where(active: true)
    update_attribute(:semester_id, @active_semester[0].id)
  end
end
