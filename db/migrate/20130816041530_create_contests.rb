class CreateContests < ActiveRecord::Migration
  def self.up
    create_table :contests do |t|
      t.string :name
      t.date :started_on
      t.date :ended_on
      t.timestamps
    end
  end

  def self.down
    drop_table :contests
  end
end
