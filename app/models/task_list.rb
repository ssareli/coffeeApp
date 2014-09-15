class TaskList < ActiveRecord::Base
  belongs_to :project
  has_many :tasks
  validates :name, presence: true, length: { minimum: 1 }
end
