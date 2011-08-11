class Player < ActiveRecord::Base
  validates :name, :email, :uniqueness=>true, :presence=>true
  has_many :teams, :finder_sql => 'select * from teams t where t.player1_id == #{id} or t.player2_id == #{id}'
end
