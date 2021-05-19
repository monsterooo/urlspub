module Feed
  class Juejin < Feed::Fetch
    def run(url = 'https://juejin.cn/rss')
      target = Target.where(url: url).first
      feed, xml = query(url)
      return Digest::MD5.hexdigest(xml) == target.last_hash
      # feed.entries.each do |entry|
      #   p entry.title
      # end
      # p
    end
  end
end