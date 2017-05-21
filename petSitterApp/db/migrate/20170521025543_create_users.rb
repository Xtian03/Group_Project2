class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :password_digest
      t.string :location
      t.text :image

      t.timestamps
    end
  end
end
