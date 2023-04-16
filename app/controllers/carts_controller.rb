class CartsController < ApplicationController
  def show
    @cart = current_cart
  end

  def checkout
    @cart = current_cart
    @cart.checkout
    flash[:notice] = "Your order has been successfully validated."
    redirect_to root_path
  end
end
