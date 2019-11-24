class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :name
      t.string :crop
      t.references :farm, foreign_key: true

      t.timestamps
    end
  end
end
