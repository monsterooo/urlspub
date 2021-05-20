class Target < ApplicationRecord
  has_many :articles
  
  def run
    Feed::Juejin.new.run(url)
  end
end
