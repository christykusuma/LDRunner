class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :city
      t.attachment :photo

      t.references :distance, foreign_key: true

      t.timestamps
    end
  end
end