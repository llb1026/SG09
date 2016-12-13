class HomeController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
    if user_signed_in?
      redirect_to '/posts'
    end
  end
  
  def mypage
    @replies = Reply.where(user_id: current_user)
    @posts = Post.where(user_id: current_user)
  end
end
