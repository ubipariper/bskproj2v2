class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :points
      t.string :name
      t.integer :priority
      t.text :description
      t.integer :state
      t.references :user, foreign_key: true
      t.references :sprint, foreign_key: true

      t.timestamps
    end
  end
end
