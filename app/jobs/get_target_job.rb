class GetTargetJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Target.all.each do |target|
      target.run
    end
  end
end

# Sidekiq::Cron::Job.create(name: 'get target worker - every 1min', cron: '*/1 * * * *', class: 'GetTargetJob')