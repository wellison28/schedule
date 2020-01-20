class CreateReservation < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.text :description
      t.datetime :datetime
      t.references :users

      t.timestamps
    end
  end
end
