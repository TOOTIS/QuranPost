class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.text :content
      t.belongs_to :chapter, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
