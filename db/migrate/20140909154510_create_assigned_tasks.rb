class CreateAssignedTasks < ActiveRecord::Migration
  def change
    create_table :assigned_tasks do |t|
      t.references :owner, index: true
      t.belongs_to :task 
      
      t.timestamps
    end
  end
end
