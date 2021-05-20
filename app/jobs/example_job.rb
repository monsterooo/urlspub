class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Target.all.each do |target|
      target.run
    end
  end
end
