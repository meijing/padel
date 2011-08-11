class Confirmation < ActiveRecord::Base
  belongs_to :confirmable, :polymorphic => true
  scope :to_accept, lambda {
    where(:action=> 'accept')
  }

  scope :to_reject, lambda {
    where(:action=> 'reject')
  }
  

  def to_param
    code
  end
end
