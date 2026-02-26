class CreateSponsors < ActiveRecord::Migration[8.1]
  def change
    create_table :sponsors do |t|
      t.string :name, null: false
      t.string :email

      t.timestamps
    end
  end
end
