class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  has_many :comments, :dependent => :destroy

  validates :user, :presence => true
  validates :project, :presence => true
  validates :name, :presence => true
end
