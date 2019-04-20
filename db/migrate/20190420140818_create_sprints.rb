class CreateSprints < ActiveRecord::Migration[5.1]
  def change
    create_table :sprints do |t|
      t.datetime :date_start
      t.datetime :date_end
      t.string :name

      t.timestamps
    end
  end
end
