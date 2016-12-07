class CreateAppoitments < ActiveRecord::Migration[5.0]
  def change
    create_table :appoitments do |t|
      t.datetime :expected_at
      t.integer :pet_id
      t.text :reason

      t.timestamps
    end
  end
end
