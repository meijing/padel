class TeamConfirmation < ActionMailer::Base
  default :from => "from@example.com"

  def ask_email(team)
    @team = team
    mail :to =>@team.player2.email,
         :subject => "Padelotron. #{@team.player1.name} wants you to join a team"
#    rescue
#      logger.error "Error sending membership  email for #{@team.players.collect(&:email)}"
  end

  def send_confirmationp1_mail(team)
    @team = team
    mail :to => @team.player1.email,
         :subject => "Padelotron. You joined #{@team.name}",
         :body =>"You just joined the team #{@team.name}"
  end

  def send_confirmationp2_mail(team)
    @team = team
    mail :to => @team.player2.email,
         :subject => "Padelotron. You joined #{@team.name}",
         :body =>"You just joined the team #{@team.name}"
  end

  def send_rejectionp1_mail(team)
    @team = team
    mail :to => @team.player1.email,
         :subject => "Padelotron. You rejected joining #{@team.name}",
         :body =>"You just rejected joining the team #{@team.name}."
  end

  def send_rejectionp2_mail(team)
    @team = team
    mail :to => @team.player2.email,
         :subject => "Padelotron. You rejected joining #{@team.name}",
         :body =>"You just rejected joining the team #{@team.name}."
  end

end
