class AddStatusToTeams < ActiveRecord::Migration
  def self.up
    change_table :teams do |t|
      t.string :status
    end
  end

  def self.down
  end
end
