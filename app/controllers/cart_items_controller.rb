class CartItemsController < ApplicationController
  def create
    @product = Product.find(params[:product_id]) # Fetch the product to add to the cart
    @quantity = params[:quantity] || 1 # Get the quantity or set it to 1 if not specified

    @cart = current_cart

    @cart.add_product(@product, @quantity)

    flash[:notice] = "The product was successfully added to the cart."
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id]) # Fetch the product to add to the cart

    @cart = current_cart
    @cart.remove_product(@product)
    flash[:notice] = "The product was successfully removed from the cart."
    redirect_to cart_path(@cart)
  end
end
