class AssignedTask < ActiveRecord::Base
	has_one :task 
	belongs_to :owner
end
