class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.string :name
      t.datetime :date
      t.text :details
      t.string :address
      t.string :city
      t.string :state
      t.float :longitude
      t.float :latitude
      t.string :distance

      t.timestamps
    end
  end
end
