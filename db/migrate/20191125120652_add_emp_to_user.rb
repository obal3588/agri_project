class AddEmpToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :emp, :boolean, :default => false
  end
end
