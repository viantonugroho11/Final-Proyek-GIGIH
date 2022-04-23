class HomeController < ApplicationController

  def index
    @itemCount = Item.count
    @categoryCount = Category.count
    # @transactionsCount = Transaction.count.where(condition: "success")
  end
end
