class CleanArticleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Article.clean
  end
end

# Sidekiq::Cron::Job.create(name: 'clean article - every 30min', cron: '*/30 * * * *', class: 'CleanArticleJob')