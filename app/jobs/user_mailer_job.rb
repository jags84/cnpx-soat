class UserMailerJob < ApplicationJob
  queue_as :default

  def perform(policy)
    UserMailer.payed_policy(self.policy).deliver
  end
end
