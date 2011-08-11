class Team < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness=>true

  belongs_to :player1, :class_name => "Player"
  belongs_to :player2, :class_name => "Player"

  after_create :create_confirmations, :deliver_confirmation_ask_email

  has_many :confirmations, :as => :confirmable


  def players
    [player1,player2]
  end
  def create_confirmations
    ["accept", "reject"].each do |action_name|
      self.confirmations << Confirmation.new(:action => action_name, :code => rand(100000000000).to_s)
    end
  end


  def deliver_confirmation_ask_email
    TeamConfirmation.ask_email(self).deliver
  end

  def confirm!
    update_attributes :status =>  'confirmed'
    TeamConfirmation.send_confirmationp1_mail(self).deliver
    TeamConfirmation.send_confirmationp2_mail(self).deliver
  end

  def reject!
    update_attributes :status =>  'rejected'
    TeamConfirmation.send_rejectionp1_mail(self).deliver
    TeamConfirmation.send_rejectionp2_mail(self).deliver
  end
end
