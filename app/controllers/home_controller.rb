class HomeController < ApplicationController
  def index
  end
  def create
    amount = params[:amount].to_f
    tax = params[:tax].to_f
    tip = params[:tip].to_f
    people = params[:people].to_f
    @a = ((amount*(tax/100))+amount+tip)/people
    redirect_to root_path({total: @a})
  end
end
