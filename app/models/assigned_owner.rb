class AssignedOwner < ActiveRecord::Base
	has_one :owner 
	belongs_to :task
end
