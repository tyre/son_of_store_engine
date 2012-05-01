class NavBarApiController < ApplicationController
  def contents
    cart_link = "<li id='cart-menu'><a href=#{cart_path}><i class='icon-shopping-cart icon-white'></i>&nbsp;&nbsp;Cart (#{current_cart.cart_count})</a></li>"
    if current_user
      profile_link = "<li><a href = '#{user_path(current_user)}'>
                          <i class='icon-user icon-white'></i>&nbsp;&nbsp;#{current_user.name}</a>

                      </li>"
      signout_link = "<li><a href = '#{signout_path}'>Sign out</a></li>"
      render :text => "#{cart_link}#{profile_link}#{signout_link}"
      #render :json => {:user_name => current_user.name,
                       #:user_path => user_path(current_user),
                       #:cart_path => cart_path,
                       #:cart_count => current_cart.cart_count,
                      #}.to_json
    else
      signin_link = "<li><a href = '#{signin_path}'>Sign in</a></li>"
      signup_link = "<li><a href = '#{signup_path}'>Register</a></li>"
      render :text => cart_link + signin_link + signup_link
    end
  end
end

  #<li>
    #<%= link_to current_user do %>
    #<i class='icon-user icon-white'></i>&nbsp;&nbsp;<%= "#{current_user.name}" %>
    #<% end %>
  #</li>

  #<li><%= link_to "Sign out", signout_path, method: "delete" %></li>
