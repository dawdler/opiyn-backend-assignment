class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = Item.order("reviews_count DESC")
    @items = @items.page(params[:page]).per(10)
    render json: @items
  end

  # GET /items/1
  # GET /items/1.json
  def show
    render json: @item
  end

  def home
    render html: "<strong>Opiyn Backend </strong>".html_safe
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      # extract the id from the string using regex
      get_item_id =  params[:id][/\{(.*?)}/,1]
      @item = Item.find(get_item_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:id, :title, :image_url)
    end
end
