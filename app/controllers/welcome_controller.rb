class WelcomeController < ApplicationController
  def start
    @date = Date.today
    @posts = Post.all.order({date: :desc, id: :desc}) 
  end

  def contact
  end
end
