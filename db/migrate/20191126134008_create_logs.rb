class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :entry

      t.references :plot, foreign_key: true
      t.timestamps
    end
  end
end
