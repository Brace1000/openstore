class ApplicationController < ActionController::Base
  include CurrentCart

  before_action :transfer_guest_cart, if: :user_signed_in?

  private

  def transfer_guest_cart
    return unless session[:cart_id] && current_cart.cart_items.empty?

    guest_cart = Cart.find(session[:cart_id])
    guest_cart.cart_items.each do |item|
      current_cart.cart_items.create(product: item.product, quantity: item.quantity)
    end
    guest_cart.destroy
    session[:cart_id] = nil
  end
end
