class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.references :task, index: true
      t.string :name
      t.string :email, unique: true, index: true
      t.string :password # need to hash encrypt this!!
      t.string :password_digest 

      t.timestamps
    end
  end
end
