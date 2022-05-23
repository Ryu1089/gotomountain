class HomeController < ApplicationController
  def index
  end
  
  def new_guest
    user = User.guest #ゲストユーザーをモデルから呼び出す
    sign_in user #ゲストユーザーでサインイン
    redirect_to root_path
  end
end
