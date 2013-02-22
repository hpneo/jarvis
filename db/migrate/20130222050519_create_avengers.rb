class CreateAvengers < ActiveRecord::Migration
  def change
    create_table :avengers do |t|
      t.string :name
      t.string :alias
      t.string :permalink
      t.text :description

      t.timestamps
    end
  end
end
