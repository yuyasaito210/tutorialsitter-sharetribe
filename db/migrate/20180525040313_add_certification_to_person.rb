class AddCertificationToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :certificate_image_filename, :string
    add_column :people, :certificate_image_content_type, :string
    add_column :people, :certificate_image_file_size, :integer
    add_column :people, :certificate_image_updated_at, :datetime
    add_column :people, :certificate_image_processing, :boolean
  end
end
