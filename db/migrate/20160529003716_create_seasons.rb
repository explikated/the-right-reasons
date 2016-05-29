class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :number
      t.string :star_name
      t.integer :type
      t.timestamps
    end
  end
end
