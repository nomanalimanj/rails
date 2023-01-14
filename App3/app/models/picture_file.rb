class PictureFile < ApplicationRecord
  after_destroy_commit :delete_picture_file_from_disk
 
  def delete_picture_file_from_disk
    if File.exist?(filepath)
      File.delete(filepath)
    end
  end
end