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
#     name: 'CNBlogs',
#     icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/cnblogs.svg',
#     url: 'http://feed.cnblogs.com/blog/picked/rss',
#     home: 'https://www.cnblogs.com/',
#     site: 'cnblogs',
#     background: '#d14c25',
#     color: 'white',
#   },
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
#     url: 'https://rsshub.app/github/trending/daily/',
#     home: 'https://www.github.com/',
#     site: 'github',
#     background: '#24292e',
#     color: 'white',
#   },
# ])

Target.create([
  {
    name: '开源中国',
    icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/oschina.svg',
    url: 'http://rsspub.herokuapp.com/oschina/news/project',
    home: 'https://www.oschina.net/',
    site: 'oschina',
    background: 'white',
    color: 'black',
  },
])
