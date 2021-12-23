class CreateFacts < ActiveRecord::Migration[6.1]
  def change
    create_table :facts do |t|
      t.string :content
      t.string :creator

      t.timestamps
    end
  end
end
