class CreatePlayersTable < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :contest_id
    end
  end
end
