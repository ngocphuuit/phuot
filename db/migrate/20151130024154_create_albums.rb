class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :description
      t.references :user, index: true, foreign_key: true
      t.references :phuot, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
