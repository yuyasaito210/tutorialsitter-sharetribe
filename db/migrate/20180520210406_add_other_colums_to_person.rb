class AddOtherColumsToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :certificate_issue, :datetime
    add_column :people, :certificate_expiration, :datetime
    add_column :people, :parent_contact_type, :string
  end
end
