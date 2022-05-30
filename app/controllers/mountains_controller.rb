class MountainsController < ApplicationController
  
    before_action :authenticate_user!
  
  def index
    @mountains = Mountain.all
  end

  def show
    @mountain = Mountain.find(params[:id])
    @user = User.find_by(id: current_user.id)
  end

  def new
    @mountain = Mountain.new
    
  end
  
  def create
    @mountain = Mountain.new(mountain_params)
    @mountain.user_id = current_user.id
    if @mountain.invalid?
      flash[:notice] = "項目を全部入力してください"
      render "new"
    else
    @mountain.save
    flash[:notice] = "山を登録しました"
    redirect_to @mountain
    end
  end
  
  def destroy
    @mountain = Mountain.find(params[:id])
    @mountain.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to :mountains
  end
  
  def search
    @q = Mountain.ransack(params[:q])
    @mountains = @q.result(distinct: true)
    if @q_header
      @mountains = @q_header.result(distinct: true)
    end
  end

  def edit
  end
  
  private
  def set_q
    @q = Mountain.ransack(params[:q])
  end
  
  def mountain_params
    params.require(:mountain).permit(:name, :season, :start, :endtime, :food, :water, :image)
  end
end
