class RemovePhotoFromMonuments < ActiveRecord::Migration[5.2]
  def change
    remove_column :monuments, :photo, :string
  end
end
