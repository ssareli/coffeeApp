class Task < ActiveRecord::Base
  belongs_to :task_list
  has_many :comments
  has_one :assigned_owner
  validates :title, presence: true, length: { minimum: 1 }
  validates :status, presence: true
end
