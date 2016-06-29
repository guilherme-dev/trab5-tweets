class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :nickname
      t.string :website
      t.string :phone
      t.string :city

      t.timestamps null: false
    end
  end
end
