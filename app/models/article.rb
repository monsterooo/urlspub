class Article < ApplicationRecord
  belongs_to :target
  scope :lately_on, -> { order(created_at: :asc).limit(30) }
  scope :created_on, -> { where(created_at: DateTime.now.beginning_of_day..DateTime.now.end_of_day) }
  
  def self.today
    self.created_on
  end
  def self.lately
    self.lately_on
  end
end
