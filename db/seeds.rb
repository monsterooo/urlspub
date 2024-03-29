# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Target.create([
#   {
#     name: '掘金',
#     icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/juejin.svg',
#     url: 'https://juejin.cn/rss',
#     home: 'https://juejin.cn',
#     site: 'juejin',
#     background: '#61a4ff',
#     color: 'black',
#   },
#   {
#     name: 'SegmentFault',
#     icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/sf.png',
#     url: 'https://segmentfault.com/articles/feeds',
#     home: 'https://segmentfault.com',
#     site: 'segmentfault',
#     background: '#009a61',
#     color: 'white',
#   },
#   {
#     name: 'CSS-Tricks',
#     icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/css-tricks.svg',
#     url: 'https://css-tricks.com/feed/',
#     site: 'csstricks',
#     background: 'linear-gradient(to bottom, #fffdfd, #faebdc)',
#     color: 'black',
#   }
# ])

# Target.create([
#   {
#     name: 'InfoQ',
#     icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/infoq.png',
#     url: 'https://xie.infoq.cn/feeds',
#     home: 'https://www.infoq.cn/',
#     site: 'infoq',
#     background: '#3db24b',
#     color: 'white',
#   },
# ])

# Target.create([
#   {
#     name: 'Github Trending',
#     icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/github.svg',
#     url: 'https://rsspub.herokuapp.com/github/trending/daily',
#     home: 'https://www.github.com/',
#     site: 'github',
#     background: '#24292e',
#     color: 'white',
#   },
# ])

# Target.create([
#   {
#     name: '开源中国',
#     icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/oschina.svg',
#     url: 'http://rsspub.herokuapp.com/oschina/news/project',
#     home: 'https://www.oschina.net/',
#     site: 'oschina',
#     background: 'white',
#     color: 'black',
#   },
# ])


# Target.create([
#   {
#     name: 'V2EX',
#     icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/v2ex.png',
#     url: 'http://rsspub.herokuapp.com/v2ex/tab/tech',
#     home: 'https://v2ex.com/',
#     site: 'v2ex',
#     background: 'white',
#     color: 'black',
#   },
# ])

Target.create([
  {
    name: 'web.dev',
    icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/webdev.png',
    url: 'https://web.dev/feed.xml',
    home: 'https://web.dev/',
    site: 'webdev',
    background: 'white',
    color: 'black',
  },
])

Target.create([
  {
    name: 'Hacker News',
    icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/hackernews.png',
    url: 'https://hnrss.org/frontpage',
    home: 'https://news.ycombinator.com/',
    site: 'hackernews',
    background: '#ff6600',
    color: 'white',
  },
])

Target.create([
  {
    name: '/r/javascript',
    icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/javascript.png',
    url: 'https://www.reddit.com/r/javascript.rss',
    home: 'https://www.reddit.com/r/javascript',
    site: 'redditjavascript',
    background: '#f7df1d',
    color: 'black',
  },
])


Target.create([
  {
    name: '/r/reactjs',
    icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/javascript.png',
    url: 'https://www.reddit.com/r/reactjs.rss',
    home: 'https://www.reddit.com/r/reactjs',
    site: 'redditreactjs',
    background: 'white',
    color: '#61dafb',
  },
])