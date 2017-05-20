class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :home_sitting
      t.string :walking
      t.string :grooming
      t.string :daycare
      t.integer :user_id

      t.timestamps
    end
  end
end
