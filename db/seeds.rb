# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Target.create([
  {
    name: '掘金',
    icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/juejin.svg',
    url: 'https://juejin.cn/rss',
    home: 'https://juejin.cn',
    site: 'juejin',
    background: '#61a4ff',
    color: 'black',
  },
  {
    name: 'SegmentFault',
    icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/sf.png',
    url: 'https://segmentfault.com/articles/feeds',
    home: 'https://segmentfault.com',
    site: 'segmentfault',
    background: '#009a61',
    color: 'white',
  },
  {
    name: 'CSS-Tricks',
    icon: 'https://urlspub.oss-cn-chengdu.aliyuncs.com/css-tricks.svg',
    url: 'https://css-tricks.com/feed/',
    site: 'csstricks',
    background: 'linear-gradient(to bottom, #fffdfd, #faebdc)',
    color: 'black',
  }
])
