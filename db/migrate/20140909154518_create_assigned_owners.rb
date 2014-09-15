class CreateAssignedOwners < ActiveRecord::Migration
  def change
    create_table :assigned_owners do |t|
      t.references :tasks, index: true
      t.belongs_to :owner
      t.timestamps
    end
  end
end
