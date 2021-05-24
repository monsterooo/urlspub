class Target < ApplicationRecord
  has_many :articles
  
  def run
    feedObj = Object.const_get("Feed::#{site.capitalize}");
    feedObj.new.run(url)
  end
end
