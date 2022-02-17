namespace :weekly do
  desc "清除超出限制的数据"
  task clean: :environment do
    Article.clean
  end

end
