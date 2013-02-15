class AddAttachmentPhotoToBlogs < ActiveRecord::Migration
  def self.up
    change_table :blogs do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :blogs, :photo
  end
end
