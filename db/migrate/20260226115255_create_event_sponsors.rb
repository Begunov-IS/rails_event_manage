class CreateEventSponsors < ActiveRecord::Migration[8.1]
  def change
    create_table :event_sponsors do |t|
      t.references :event, null: false, foreign_key: true
      t.references :sponsor, null: false, foreign_key: true
      t.decimal :amount, precision: 12, scale: 2, null: false

      t.timestamps
    end

    add_index :event_sponsors, [:event_id, :sponsor_id], unique: true
  end
end
