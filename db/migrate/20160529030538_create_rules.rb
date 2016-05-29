class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.integer :points
      t.text :description
      t.integer :category
      t.timestamps
    end
  end
end
