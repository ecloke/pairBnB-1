class ReservationMailer < ApplicationMailer
   default from: 'johnson.raz.kev@gmail.com'
 
  def booking_host_email(customer,host,reservation_id)
    @customer = customer
    @host = host
    @reservation_id = reservation_id
  
    mail(to: @host.email, subject: 'Dear ' + host.profile.name.to_s + ', you have a new booking!')

  end


  def booking_customer_email(customer,host,reservation_id)
    @customer = customer
    @host = host
    @reservation_id = reservation_id
    mail(to: @customer.email, subejct: 'Congratulation ' + customer.profile.name.to_s + '. Your reservation is confirmed!')
  end



  
end
