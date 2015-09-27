class RemoveReady < ActiveRecord::Migration
  def change
    remove_column :tasks, :ready
    add_column :tasks, :ready, :integer,  :default => 0
  end
end
