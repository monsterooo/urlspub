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
    icon: 'https://b-gold-cdn.xitu.io/favicons/v2/apple-touch-icon.png',
    url: 'https://juejin.cn/rss',
    site: 'juejin'
  },
  {
    name: 'SegmentFault',
    icon: 'https://cdn.segmentfault.com/r-e7d8949f/touch-icon.png',
    url: 'https://segmentfault.com/articles/feeds',
    site: 'segmentfault'
  }
])
