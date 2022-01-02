class WelcomeController < ApplicationController
    def index
        @category_amount = Category.all.count
        @order_amount = Order.all.count
    end
end
