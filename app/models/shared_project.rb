class SharedProject < ActiveRecord::Base
	has_many :task_lists
	has_and_belongs_to_many :owners
    validates :name, presence: true, length: { minimum: 1 }
end
