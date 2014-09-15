class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.references :owner, index: true
      t.string :last_visit

      t.timestamps
    end
  end
end
