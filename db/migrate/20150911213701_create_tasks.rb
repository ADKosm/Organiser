class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :name
      t.integer :raiting
      t.date :deadline
      t.integer :ready, :default => 0
      t.integer :discipline_id

      t.timestamps
    end

    add_index :tasks, :discipline_id
  end
end
