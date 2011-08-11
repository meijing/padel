class CreateConfirmations < ActiveRecord::Migration
  def self.up
    create_table :confirmations do |t|
      t.string :confirmable_type
      t.integer :confirmable_id
      t.string :code
      t.string :action

      t.timestamps
    end
  end

  def self.down
    drop_table :confirmations
  end
end
