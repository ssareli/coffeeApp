class CreateSharedProjects < ActiveRecord::Migration
  def change
    create_table :shared_projects do |t|
      t.references :owner, index: true
      t.string :name
      t.string :description

      t.timestamps
    end

    # create reference table
    create_table :shared_projects_owners, id: false do |t|
      t.belongs_to :shared_project
      t.belongs_to :owner
    end
  end
end
