class AdditionalUserProperties < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer, default: 26
    add_column :users, :occupation, :string, default: "Software Salesman"
  end
end
