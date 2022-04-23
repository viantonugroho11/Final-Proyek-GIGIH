class OrderController < ApplicationController
before_action :set_transaction, only: [:create, :new]

  def create
    @order = Order.new(order_params)
    @transaction.update(:count=>@transaction.count_item + 1)
    respond_to do |format|
      if @order.save
        format.html { render :new, notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def new
    @item = Item.all
    @transaction = Transaction.new
  end

  private

    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:item_id, :count, :price, :total => :price * :count, :transaction_id=>params[:id])
    end
end
