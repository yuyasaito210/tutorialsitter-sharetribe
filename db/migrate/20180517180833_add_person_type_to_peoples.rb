class AddPersonTypeToPeoples < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :person_type, :string
  end
end
