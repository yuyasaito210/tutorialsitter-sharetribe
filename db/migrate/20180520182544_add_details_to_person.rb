class AddDetailsToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :phone_number2, :string
    add_column :people, :children_number, :string
    add_column :people, :children_gender, :string
    add_column :people, :children_age, :string
    add_column :people, :children_need, :string
  end
end
