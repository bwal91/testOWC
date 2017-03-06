class PaymentsController < ApplicationController
	load_and_authorize_resource
  def index
  	@payments = Payment.all
  end

  def import
  	Payment.import(params[:file])

  	redirect_to '/payments', notice: "Payment Data imported"
  end
end