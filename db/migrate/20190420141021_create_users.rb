class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :password_digest
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
