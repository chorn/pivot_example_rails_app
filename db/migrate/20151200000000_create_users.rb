class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.boolean :is_admin, default: false
      t.integer :taco_rank, null: false, default: 0

      t.timestamps null: false
    end
  end
end
