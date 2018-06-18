class HomeController < ApplicationController
#액션
  def lotto
    @lotto = (1..45).to_a.sample(6)
  end

  def index
  end

  def welcome
    @name = params[:name]
  end

  def google
  end

  def game

  end

  def gameresult
    #크롤링 로직
    require 'httparty'
    require 'nokogiri'
    require 'time'
    url = 'https://pubg.op.gg/user/' + params[:username]
    doc = HTTParty.get(url)
    html = Nokogiri::HTML(doc.body)
    @result = html.css('#matchDetailWrap > div.user-content-layer__matches-content > div:nth-child(1) > div > div > div.user-content-layer__matches-list > ul > li:nth-child(1) > div.matches-item__summary > div.matches-item__column.matches-item__column--status > div.matches-item__reload-time')
    @result = @result.attr('data-ago-date').value
  end

  def random
  end

  def randomresult
    @name = params[:name]
    img= ["m1.jpg", "m2.jpg","m3.jpg", "m4.jpg"]
    @randomimg = img.sample
  end

end
