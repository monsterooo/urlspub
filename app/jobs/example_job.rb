class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    p '执行background job'
  end
end

# Sidekiq::Cron::Job.create(name: 'Example worker - every 1min', cron: '*/1 * * * *', class: 'ExampleJob', active_job: true)
