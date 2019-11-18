class AddPhotoToMonuments < ActiveRecord::Migration[5.2]
  def change
    add_column :monuments, :photo, :string
  end
end
