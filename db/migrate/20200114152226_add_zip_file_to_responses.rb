class AddZipFileToResponses < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :zip_file_id, :string
    add_column :responses, :zip_file_filename, :string
    add_column :responses, :zip_file_size, :string
    add_column :responses, :zip_file_content_type, :string
  end
end
