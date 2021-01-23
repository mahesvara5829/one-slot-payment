class PaymentsController < ApplicationController

  def index
    @payments=Payment.all
  end

  def new
    @payment=Payment.new
  end

  def create
    @payment=Payment.new(payment_params)
    if @payment.save
      redirect_to root_path
    else
      render :new
      @payment=Payment.new(payment_params)
    end

  end


  private
  def payment_params
    params.require(:payment).permit(:store_id, :kisyu_id, :investment_medal, :investment_ball, :recovery_medal, :recovery_ball, :medal, :ball, :month_id, :day_id, :memo).merge(user_id: current_user.id)
  end



end
