class AddSubjectMatterToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :subject_matter, :string
  end
end
