module ProductsHelper
  def product_author(product)
        user_signed_in? && current_user == product.user
  end
end
