class UsersController < ApplicationController

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, only: [:my_products]
  before_action :set_user, only: [:show]

  def show
    @products = Product.where(user_id: @user.id)
  end

  def my_products
    @user = current_user
    @products = @user.products
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def my_account
    @user = current_user
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image])
    devise_parameter_sanitizer.permit(:account_update, keys: [:image])
  end

end
