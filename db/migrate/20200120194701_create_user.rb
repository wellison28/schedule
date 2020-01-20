class CreateUser < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 30, null: false
      t.string :last_name, limit: 50, null: false

      t.timestamps
    end
  end
end
