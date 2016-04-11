# Preview all emails at http://localhost:3000/rails/mailers/reservation_mailer
class ReservationMailerPreview < ActionMailer::Preview
  def booking_mail_preview
    
    ReservationMailer.booking_host_email(User.first, User.last, 3)
  end

end
