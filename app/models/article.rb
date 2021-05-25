class Article < ApplicationRecord
  belongs_to :target
  scope :created_on, -> { where(created_at: DateTime.now.beginning_of_day..DateTime.now.end_of_day) }
  
  def self.today
    self.created_on
  end
end
