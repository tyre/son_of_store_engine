class NavBarApiController < ApplicationController
  def contents
    if current_user

      cart_link = "<li id='cart-menu'><a href=#{cart_path}><i class='icon-shopping-cart icon-white'></i>&nbsp;&nbsp;'Cart #{current_cart.cart_count}'</a></li>"
      render :text => cart_link
      #render :json => {:user_name => current_user.name,
                       #:user_path => user_path(current_user),
                       #:cart_path => cart_path,
                       #:cart_count => current_cart.cart_count,
                      #}.to_json
    else
      render :json => {

                      }
    end
  end
end

