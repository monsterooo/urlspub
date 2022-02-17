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

  def self.clean
    size = Article.all.size
    limitSize = 5000
     # 如果当前数据小于limitSize则什么也不做
    return if size < limitSize
     # 否则删除 size / 2 大小的文章
    Article.order(created_at: :asc).limit(size / 2).destroy_all
  end

end
