class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.string :description
      t.date :time_beg
      t.date :time_end

      t.timestamps
    end
  end
end
