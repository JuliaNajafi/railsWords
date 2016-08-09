class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :englishword
      t.string :otherword
      t.string :pinyin
      t.text :example
      t.references :playlist, foreign_key: true

      t.timestamps
    end
  end
end
