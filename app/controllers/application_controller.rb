class ApplicationController < ActionController::Base
  private

  def current_cart
    if current_user
      # If user already has a Cart, return it, else create a new one
      @current_cart ||= current_user.cart || current_user.create_cart
    else
      # If the session has an ID for the Cart, look for it in the database, else create a new one
      @current_cart ||= Cart.find_by(id: session[:cart_id]) || Cart.create
      # Save the ID of the Cart into the session to be able to find it later
      session[:cart_id] = @current_cart.id
    end
    @current_cart
  end
end
