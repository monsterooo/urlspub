module Feed
  class Csstricks < Feed::Fetch
    def run(url)
      target = Target.where(url: url).first
      feed, xml = query(url)
      return if Digest::MD5.hexdigest(xml) == target.last_hash
      feed.entries.each do |entry|
        article = target.articles.where(url: entry.url).first
        attributes = {title: entry.title, url: entry.url, description: entry.summary}
        if (article)
          article.update(attributes)
        else
          target.articles.create(attributes)
        end
      end
    end
  end
end