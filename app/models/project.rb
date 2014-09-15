class Project < ActiveRecord::Base
	has_many :task_lists
	belongs_to :owner
    validates :name, presence: true, length: { minimum: 1 }
end
