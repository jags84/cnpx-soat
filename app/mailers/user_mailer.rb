class UserMailer < ApplicationMailer
  layout 'mailer'
  def payed_policy(policy)
    @policy = policy
    mail(to: @policy.user.email, subject: 'Hemos recibido tu pago')
  end
end
