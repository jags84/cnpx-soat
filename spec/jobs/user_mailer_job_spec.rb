require 'rails_helper'

RSpec.describe UserMailerJob, type: :job do
  include ActiveJob::TestHelper
  subject(:job) { described_class.perform_later(FactoryGirl.create(:policy,policy_status:'paid')) }

  it 'queues the job' do
    expect { job }
      .to change(ActiveJob::Base.queue_adapter.enqueued_jobs, :size).by(1)
  end

  after do
    clear_enqueued_jobs
    clear_performed_jobs
  end

end
