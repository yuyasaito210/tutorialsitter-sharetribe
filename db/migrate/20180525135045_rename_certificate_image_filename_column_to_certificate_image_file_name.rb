class RenameCertificateImageFilenameColumnToCertificateImageFileName < ActiveRecord::Migration[5.1]
  def change
    rename_column :people, :certificate_image_filename, :certificate_image_file_name
  end
end
