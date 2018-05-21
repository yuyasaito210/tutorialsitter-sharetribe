class AddColumsToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :grade_level, :string
    add_column :people, :university_degree, :string
    add_column :people, :university_name, :string
    add_column :people, :arrest, :string
    add_column :people, :convicted_felony, :string
  end
end
