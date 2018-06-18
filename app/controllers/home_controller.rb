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
end
