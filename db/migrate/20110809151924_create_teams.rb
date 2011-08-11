class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.integer :player1_id
      t.integer :player2_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
