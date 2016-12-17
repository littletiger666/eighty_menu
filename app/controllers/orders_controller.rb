class OrdersController < ApplicationController
  before_action :set_order, only: [:update, :show, :destroy, :edit]

  def index
    @orders = Order.all.order('created_at DESC')
  end

  def new
    @order = Order.new
  end

  def show
  end

  def create
    @order = Order.new(post_params)
    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to @order
    else
      render 'edit'
    end
  end

  def destroy
    @order.destroy
    redirect_to root_path
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:title, :body)
  end
end
