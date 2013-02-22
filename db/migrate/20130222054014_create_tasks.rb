class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :content
      t.integer :avenger_id
      t.string :status, :default => 'unscheduled'

      t.timestamps
    end
  end
end
