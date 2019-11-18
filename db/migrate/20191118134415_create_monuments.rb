class CreateMonuments < ActiveRecord::Migration[5.2]
  def change
    create_table :monuments do |t|
      t.string :title
      t.string :address
      t.text :description
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
