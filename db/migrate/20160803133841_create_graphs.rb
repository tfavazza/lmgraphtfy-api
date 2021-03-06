class CreateGraphs < ActiveRecord::Migration
  def change
    create_table :graphs do |t|
      t.string :graphJSON, null: false
      t.references :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
