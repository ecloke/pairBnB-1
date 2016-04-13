class TransactionsController < ApplicationController


  def create
    @result = Braintree::Transaction.sale(
              amount: Reservation.find(params[:transaction][:reservation_id]).total_price,
              payment_method_nonce: params[:payment_method_nonce])
    if @result.success?
      Transaction.create(reservation_id: params[:transaction][:reservation_id], braintree_transaction_id: @result.transaction.id, status: @result.transaction.status, last_4: @result.transaction.credit_card_details.last_4)
     
      # current_user.purchase_cart_movies!
      redirect_to reservations_path, notice: "Congratulations! Your transaction has been successfully processed!"

    else
      
      Transaction.create(reservation_id: params[:transaction][:reservation_id], braintree_transaction_id: @result.transaction.id, status: @result.transaction.status, last_4: @result.transaction.credit_card_details.last_4)
   
      gon.client_token = generate_client_token
      @reservation = Reservation.find(params[:transaction][:reservation_id])  
      @transaction = Transaction.new
      
      redirect_to reservation_path(@reservation), notice: "Something went wrong while processing your transaction. Please try again!"
    end
  end


  def new
      if @reservation.blank?
        @reservation = Reservation.find(params[:id])
      end
      @client_token= Braintree::ClientToken.generate.to_s
      gon.client_token = generate_client_token
      @transaction = Transaction.new

  end

 private
    def generate_client_token
      Braintree::ClientToken.generate
    end


end
