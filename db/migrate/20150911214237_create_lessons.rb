class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :kind
      t.integer :discipline_id
      t.integer :day

      t.timestamps
    end

    add_index :lessons, :discipline_id
  end
end
