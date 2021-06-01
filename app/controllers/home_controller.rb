class HomeController < ApplicationController
  def index
    @articles = Target.category
  end

  def fetch_more
    more_params = fetch_more_params
    target = Target.where({site: more_params['site']}).first
    articles = target.articles
    if more_params['interval'] == 'lately'
      result = target.articles.lately
    elsif more_params['interval'] == 'today'
      result = articles.where(created_at: DateTime.now.beginning_of_day..DateTime.now.end_of_day).order(created_at: :desc)
    elsif more_params['interval'] == 'week'
      result = articles.where('created_at >= ?', 1.week.ago).order(created_at: :desc)
    elsif more_params['interval'] == 'month'
      result = articles.where('created_at >= ?', 1.month.ago).order(created_at: :desc)
    end
    render partial: 'home/list', locals: { target: target, articles: result, interval: more_params['interval'] }
  end
  
  private
    def fetch_more_params
      params.require(:target).permit(:site, :interval)
    end
end
