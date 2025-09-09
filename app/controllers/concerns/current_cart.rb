module CurrentCart
  extend ActiveSupport::Concern

  included do
  helper_method :current_cart
end


  private

def current_cart
  if user_signed_in?
    @current_cart ||= current_user.cart || current_user.create_cart
  else
    @current_cart ||= Cart.find_by(id: session[:cart_id])
    unless @current_cart
      @current_cart = Cart.create
      session[:cart_id] = @current_cart.id
    end
    @current_cart
  end
end
end
