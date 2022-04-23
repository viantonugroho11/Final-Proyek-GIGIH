class OrderController < ApplicationController
before_action :set_transaction, only: [:create, :new]

  def create
    @order = Order.new(order_params)
    @transaction.update(:count_item=>@sum_count_transaction)
    respond_to do |format|
      if @order.save
        format.html { redirect_to '/admin/order/' + @transaction.id.to_s + '/new' , notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def new
    @item = Item.all
    @order = Order.new
  end

  private

    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:item_id, :count, 
        :price => check_price, 
        :total => sum_price, 
        :transaction_id=>(params[:id]))
    end

    def check_price
      @item = Item.where(:id => params[:order][:item_id]).first.price
      return @item
    end

    def sum_price
      @sum_price = params[:order][:price].to_i * params[:order][:count].to_i
      return @sum_price
    end

    def sum_count_transaction
      return @sum_count_transaction = 1 + @transaction.count
    end

end
