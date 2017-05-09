class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :value
      t.references :driver, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
