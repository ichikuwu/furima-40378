class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    #@items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
     render :new, status: :unprocessable_entity 
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :item_memo, :category_id, :item_condition_id, :ship_type_id, :region_id, :ship_day_id, :item_price, :image).merge(user_id: current_user.id)
  end

end
