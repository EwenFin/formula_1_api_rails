class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.integer :value
      t.references :driver, index: true, foreign_key: true
      t.references :sponsor, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
