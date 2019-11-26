class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.string :entry
      t.references :plot_id
      t.integer :farm_id

      t.timestamps
    end
  end
end
