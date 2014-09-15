class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :tasklist, index: true
      t.references :favorite, index: true
      t.integer :priority
      t.string :title
      t.string :due
      t.string :due_repeat
      t.string :reminder
      t.string :notes
      t.integer :status
      t.string :location
      t.integer :duration
      t.string :type
      t.string :timeframe
      t.string :category
      t.integer :regular_fav

      t.timestamps
    end
  end
end
