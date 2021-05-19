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
  end
end