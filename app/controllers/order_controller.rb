class OrderController < ApplicationController
  before_action :set_order, only: [:index, :create]
  before_action :set_order_item, only: [:show, :edit, :update, :destroy]
  before_action :set_transaction, only: [:index, :create]

  def index
  end

  def new
    @items = Item.all
    @order = Order.new
  end

  def create
    
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.where("transaction_id='params[:id]'")
    end

    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def set_order_item
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:itemid, :quantity)
    end
end
