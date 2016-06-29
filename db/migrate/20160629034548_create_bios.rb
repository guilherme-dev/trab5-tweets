class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :website
      t.string :city

      t.timestamps null: false
    end
  end
end
