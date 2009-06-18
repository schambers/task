class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer :status_id, :default => 1
      t.string :name
      t.integer :points
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
