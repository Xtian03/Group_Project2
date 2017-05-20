class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :location
      t.string :image
      t.integer :pet_id
      t.integer :service_id
      t.integer :rating

      t.timestamps
    end
  end
end
