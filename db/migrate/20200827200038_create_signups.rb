class CreateSignups < ActiveRecord::Migration[6.0]
  def change
    create_table :signups do |t|
      t.integer :camper
      t.integer :activity
      t.integer :time

      t.timestamps
    end
  end
end
