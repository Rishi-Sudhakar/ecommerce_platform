class CartsController < ApplicationController
    def show
      @cart = current_cart
    end
  
    def add_to_cart
      @cart = current_cart
      product = Product.find(params[:product_id])
      @cart.add_product(product)
      @cart.save
      render partial: 'cart'
    end
  
    private
  
    def current_cart
      @current_cart ||= Cart.find_or_create_by(id: session[:cart_id])
      session[:cart_id] = @current_cart.id
      @current_cart
    end
  end
  