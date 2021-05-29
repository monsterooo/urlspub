class Article < ApplicationRecord
  belongs_to :target
  scope :lately_on, -> { order(created_at: :desc).limit(30) }
  scope :created_on, -> { where(created_at: DateTime.now.beginning_of_day..DateTime.now.end_of_day) }
  
  def self.today
    created = self.created_on
    if created.empty?
      self.lately_on # 当天没数据返回最近30条数据
    else
      created
    end
  end
  def self.lately
    self.lately_on
  end
end
