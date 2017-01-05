class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :score
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
