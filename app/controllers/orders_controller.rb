class OrdersController < ApplicationController
    def index
        @orders = Order.all.order(:id)
    end

    def show
        @order = Order.find(params[:id])
    end

    def new
        @categories = Category.all
        @order = Order.new
    end

    def create
    @order = Order.new(order_params)
    Rails.logger.debug("Tried to create following order: #{@order.discount}") 
        if @order.save
            redirect_to @order
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @categories = Category.all
        @order = Order.find(params[:id])
    end

    def update
        @order = Order.find(params[:id])

        if @order.update(order_params)
            redirect_to @order
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to orders_path
    end

    private
    def order_params
      params.require(:order).permit(:currency, :gross, :discount, :category_id)
    end
end
