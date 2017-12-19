class AddDistanceIdToUsers < ActiveRecord::Migration[5.1]
  def change
  	change_table :users do |t|
  		t.references :distance, foreign_key: true
  	end
  end
end
