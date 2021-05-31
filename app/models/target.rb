class Target < ApplicationRecord
  has_many :articles
  
  def self.category
    category = {}
    targets = Target.all.order(site: :asc)
    targets.each do |target|
      category[target.site] = target.articles.lately
    end
    category
  end
  def run
    feedObj = Object.const_get("Feed::#{site.capitalize}");
    feedObj.new.run(url)
  end
end
