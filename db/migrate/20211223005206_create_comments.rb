class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :stars
      t.string :creator
      t.belongs_to :fact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
