class Target < ApplicationRecord
  def query
    Feed::Juejin.new.run
  end
end
