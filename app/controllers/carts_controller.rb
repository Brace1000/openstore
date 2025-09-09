class CartsController < ApplicationController
  before_action :set_product, only: [:add_item, :remove_item]

  def show
    @cart_items = current_cart.cart_items.includes(:product)
  end

  def add_item
    @cart_item = current_cart.cart_items.find_or_initialize_by(product: @product)
    @cart_item.quantity ||= 0
    @cart_item.quantity += 1
    @cart_item.save
    flash[:notice] = "Added to your cart"
    redirect_to cart_path
  end

  def remove_item
    @cart_item = current_cart.cart_items.find_by(product: @product)
    @cart_item&.destroy
    flash[:notice] = "Removed from your cart"
    redirect_to cart_path
  end

  def empty
    current_cart.cart_items.destroy_all
    flash[:notice] = "Your cart is now empty"
    redirect_to root_path
  end
  def increase_item
  item = current_cart.cart_items.find_by(product_id: params[:product_id])
  if item
    item.quantity += 1
    item.save
  end
  redirect_to cart_path
end

def decrease_item
  item = current_cart.cart_items.find_by(product_id: params[:product_id])
  if item
    item.quantity -= 1
    if item.quantity <= 0
      item.destroy
    else
      item.save
    end
  end
  redirect_to cart_path
end


  private

  def set_product
    @product = Product.find(params[:product_id])
  end
end

