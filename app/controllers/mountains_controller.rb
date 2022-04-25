class MountainsController < ApplicationController
   before_action :set_q, only: [:index, :search]
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
    @mountain.save
    redirect_to :mountains
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
    params.require(:mountain).permit(:name, :season, :start, :end, :food, :water, :image)
  end
end
