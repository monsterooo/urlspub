module Feed
  class Fetch
    def query(url)
      xml = HTTParty.get(url).body
      feed = Feedjira.parse(xml)
      result = [feed, xml]
      if block_given?
        yield result
      else
        result
      end
    end
    
    def run(url)
      target = Target.where(url: url).first
      feed, xml = query(url)
      return if Digest::MD5.hexdigest(xml) == target.last_hash
      feed.entries.reverse_each do |entry|
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