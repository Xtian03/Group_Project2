class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :pets, :type, :type_of_pet
  end
end
