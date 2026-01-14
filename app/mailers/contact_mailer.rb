class ContactMailer < ApplicationMailer
  def submission(contact_params)
    @name = contact_params[:name]
    @email = contact_params[:email]
    @subject = contact_params[:subject]
    @message = contact_params[:message]

    mail(
      to: "arshprem01@gmail.com",
      from: @email,
      subject: "New Contact Form Submission: #{@subject}"
    )
  end
end
