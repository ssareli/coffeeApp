class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :task, index: true
      t.string :body
      t.string :commenter

      t.timestamps
    end
  end
end
