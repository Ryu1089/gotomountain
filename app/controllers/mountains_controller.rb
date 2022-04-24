class MountainsController < ApplicationController
  def index
    @mountains = Mountain.all
  end

  def show
    @mountain = Mountain.find(params[:id])
  end

  def new
    @mountain = Mountain.new
  end
  
  def create
    @mountain = Mountain.new(mountain_params)
    @mountain.user_id = current_user.id
    @mountain.save
    redirect_to mountains_path(@mountain)
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
  def mountain_params
    params.require(:mountain).permit(:name, :season, :start, :end, :food, :water, :image)
  end
end
